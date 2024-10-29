import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:anivsub/core/utils/utils.dart';
import 'package:archive/archive.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pointycastle/export.dart';
import 'package:wasm_run_flutter/wasm_run_flutter.dart';

@LazySingleton(as: DHA)
class DHAImpl implements DHA {
  DHAImpl() {
    initialize();
  }
  late WasmInstance instance;
  final Map<int, int> refCounts = {};

  @override
  Future<void> initialize() async {
    final wasmFile = await rootBundle.load('assets/wasm/dha.wasm');
    final binary = wasmFile.buffer.asUint8List();

    final module = await compileWasmModule(
      binary,
      config: const ModuleConfig(wasmi: ModuleConfigWasmi()),
    );

    final builder = module.builder();
    _addImports(builder);
    instance = await builder.build();
  }

  void _addImports(WasmInstanceBuilder builder) {
    _addAbortFunction(builder);
    _addBase64Function(builder);
    _addInflateFunction(builder);
  }

  void _addAbortFunction(WasmInstanceBuilder builder) {
    builder.addImport(
      'env',
      'abort',
      WasmFunction(
        (int msgPtr, int filePtr, int line, int col) {
          final msg = _getString(msgPtr >>> 0);
          final file = _getString(filePtr >>> 0);
          line = line >>> 0;
          col = col >>> 0;
          Log.error('$msg in $file:$line:$col');
        },
        params: const [ValueTy.i32, ValueTy.i32, ValueTy.i32, ValueTy.i32],
        results: const [],
      ),
    );
  }

  void _addBase64Function(WasmInstanceBuilder builder) {
    builder.addImport(
      'w',
      'b52',
      WasmFunction(
        _handleBase64Decode,
        params: const [ValueTy.i32],
        results: const [ValueTy.i32],
      ),
    );
  }

  void _addInflateFunction(WasmInstanceBuilder builder) {
    builder.addImport(
      'w',
      'ift',
      WasmFunction(
        _handleInflate,
        params: const [ValueTy.i32],
        results: const [ValueTy.i32],
      ),
    );
  }

  int _handleBase64Decode(int ptr) {
    final str = _getString(ptr >>> 0);
    if (str == null) return 0;

    final cleanStr = str.trim().replaceAll(RegExp(r'[^A-Za-z0-9+/=]'), '');
    final paddedStr = _padBase64(cleanStr);

    try {
      final bytes = base64Decode(paddedStr);
      final decodedStr = latin1.decode(bytes);
      return _allocateString(decodedStr);
    } catch (e) {
      Log.error('Base64 decode error: $e');
      return 0;
    }
  }

  int _handleInflate(int ptr) {
    final offset = ptr >>> 0;
    if (offset == 0) return 0;

    try {
      final memory = instance.getMemory('memory')!;
      final buffer = memory.view.buffer;
      final u32View = Uint32List.view(buffer);
      final size = u32View[(offset - 4) >>> 2];
      final data = buffer.asUint8List(offset, size);

      final decompressor = Inflate(data);
      final decompressedData = decompressor.getBytes();
      final result = utf8.decode(decompressedData);

      return _allocateString(result);
    } catch (e) {
      throw Exception('Error at ift: $e');
    }
  }

  String? _getString(int ptr) {
    if (ptr == 0) return null;

    final memory = instance.getMemory('memory');
    if (memory == null) return null;

    final buffer = memory.view.buffer;
    final u32View = Uint32List.view(buffer);
    final end = (ptr + u32View[(ptr - 4) >>> 2]) >>> 1;

    final u16View = Uint16List.view(buffer);
    int offset = ptr >>> 1;
    StringBuffer result = StringBuffer();

    while (end - offset > 1024) {
      result
          .write(String.fromCharCodes(u16View.sublist(offset, offset + 1024)));
      offset += 1024;
    }
    result.write(String.fromCharCodes(u16View.sublist(offset, end)));

    return result.toString();
  }

  int _allocateString(String? str) {
    if (str == null) return 0;

    final len = str.length;
    final ptr = _allocateMemory(len << 1, 2);

    final memory = instance.getMemory('memory')!;
    final view = Uint16List.view(memory.view.buffer);

    for (int i = 0; i < len; i++) {
      view[(ptr >>> 1) + i] = str.codeUnitAt(i);
    }

    return ptr;
  }

  int _allocateMemory(int size, int id) {
    return (instance.getFunction('__new')!.call([size, id])[0] as int) >>> 0;
  }

  String _padBase64(String str) {
    final padLength = str.length % 4;
    return padLength > 0 ? str + ('=' * (4 - padLength)) : str;
  }

  T? _getTypedArray<T extends TypedData>(
    T Function(ByteBuffer buffer, int offsetInBytes, int length) constructor,
    int bytesPerElement,
    int ptr,
  ) {
    if (ptr == 0) return null;

    final memory = instance.getMemory('memory');
    if (memory == null) return null;

    final buffer = memory.view.buffer;
    final arrayPtr = _getPointer(ptr + 4);
    final length = Uint32List.view(buffer)[(ptr + 8) >>> 2] ~/ bytesPerElement;

    final array = constructor(buffer, arrayPtr, length) as List<dynamic>;
    return array.sublist(0) as T;
  }

  List<T>? _getArray<T>(T? Function(int ptr) converter, int shift, int ptr) {
    if (ptr == 0) return null;

    final base = _getPointer(ptr + 4);
    final length = _getArrayLength(ptr);

    final result = <T>[];
    for (int i = 0; i < length; i++) {
      final item = converter(base + ((i << shift) >>> 0));
      if (item == null) return null;
      result.add(item);
    }
    return result;
  }

  int _getArrayLength(int ptr) {
    return instance
            .getMemory('memory')
            ?.view
            .buffer
            .asByteData()
            .getUint32(ptr + 12, Endian.little) ??
        0;
  }

  List<Uint8List> b62u(String data, int param, String? extra) {
    final dataPtr = _pinObject(_allocateString(data));
    final extraPtr = _allocateString(extra);

    try {
      final b62u = instance.getFunction('b62u');
      final result = _getArray<Uint8List>(
        (p) => _getTypedArray(
          (buffer, offset, length) => Uint8List.view(buffer, offset, length),
          1,
          _getPointer(p),
        ),
        2,
        (b62u?.call([dataPtr, param, extraPtr])[0] as int) >>> 0,
      );

      return result ?? [];
    } finally {
      _unpinObject(dataPtr);
    }
  }

  int _getPointer(int ptr) {
    final memory = instance.getMemory('memory');
    if (memory == null) return 0;

    final dataView = ByteData.view(memory.view.buffer);
    return dataView.getUint32(ptr, Endian.little);
  }

  List<Uint8List> transformBuff(
    String data, {
    bool flag1 = false,
    bool flag2 = false,
    bool flag3 = false,
    bool flag4 = false,
  }) {
    final ptr = _allocateString(data);
    if (ptr == 0) throw Exception('Failed to allocate string');

    final flags = _convertFlags([flag1, flag2, flag3, flag4]);
    final result = _callTransformBuff(ptr, flags);

    return _processTransformBuffResult(result);
  }

  List<int> _convertFlags(List<bool> flags) {
    return flags.map((flag) => flag ? 1 : 0).toList();
  }

  int _callTransformBuff(int ptr, List<int> flags) {
    final transformBuffFn = instance.getFunction('transformBuff');
    return (transformBuffFn!.call([ptr, ...flags])[0] as int) >>> 0;
  }

  List<Uint8List> _processTransformBuffResult(int result) {
    final output = _getArray<Uint8List>(
      (p) => _getTypedArray(
        (buffer, offset, length) => Uint8List.view(buffer, offset, length),
        1,
        _getPointer(p),
      ),
      2,
      result,
    );
    return output ?? [];
  }

  @override
  Future<String> decryptM3u8(
    String data, {
    bool flag1 = true,
    bool flag2 = false,
    bool flag3 = false,
    bool flag4 = false,
    String? extra,
  }) async {
    final hostBytes = _getHostBytes(extra);
    final digest = sha256.convert(hostBytes[1]);

    final transformedData = transformBuff(data, flag1: flag1);
    final decrypted = await _decryptData(transformedData, digest.bytes);

    return _dezip(decrypted);
  }

  List<Uint8List> _getHostBytes(String? extra) {
    return b62u(
      _shiftString(
        String.fromCharCodes([108, 111, 99, 97, 108, 104, 111, 115, 116]),
        10,
      ),
      10,
      extra,
    );
  }

  Future<List<int>> _decryptData(
    List<Uint8List> transformedData,
    List<int> key,
  ) async {
    return _cbcDecrypt(
      data: transformedData[1],
      iv: transformedData[0],
      key: key,
    );
  }

  @override
  Future<String> getBlobUrl(String data) async {
    final decrypted = await decryptM3u8(data);

    if (Platform.isAndroid) {
      final dir = Directory((await getTemporaryDirectory()).path);
      final tempFile = File('${dir.path}/temp.m3u8')
        ..writeAsStringSync(decrypted);

      return Uri.file(tempFile.path).toString();
    } else {
      return Uri.dataFromBytes(
        Uint8List.fromList(utf8.encode(decrypted)),
        mimeType: 'application/vnd.apple.mpegurl',
      ).toString();
    }
  }

  String _dezip(List<int> data) {
    final ptr = _allocateMemoryForData(data);
    if (ptr == 0) {
      throw Exception('Failed to allocate memory for data');
    }

    final result = _callDezipFunction(ptr);
    final output = _getString(result);

    if (output == null) {
      throw Exception('Failed to get string from result');
    }

    return output;
  }

  int _callDezipFunction(int ptr) {
    final dezipFn = instance.getFunction('dezip');
    return (dezipFn!.call([ptr])[0] as int) >>> 0;
  }

  int _allocateMemoryForData(List<int>? data) {
    if (data == null) return 0;

    final ptr = _allocateMemory(data.length, 1);
    final memory = instance.getMemory('memory');
    if (memory == null) return 0;

    _copyDataToMemory(memory, ptr, data);
    return ptr;
  }

  void _copyDataToMemory(WasmMemory memory, int ptr, List<int> data) {
    final buffer = Uint8List.view(memory.view.buffer, ptr, data.length);
    buffer.setAll(0, data);
  }

  Future<List<int>> _cbcDecrypt({
    required List<int> data,
    required List<int> iv,
    required List<int> key,
  }) async {
    final cipher = _initializeCipher(iv, key);
    return _processDecryption(cipher, data);
  }

  CBCBlockCipher _initializeCipher(List<int> iv, List<int> key) {
    return CBCBlockCipher(AESEngine())
      ..init(
        false,
        ParametersWithIV(
          KeyParameter(Uint8List.fromList(key)),
          Uint8List.fromList(iv),
        ),
      );
  }

  Future<List<int>> _processDecryption(
    CBCBlockCipher cipher,
    List<int> data,
  ) async {
    final paddedData = Uint8List.fromList(data);
    final output = Uint8List(paddedData.length);

    int offset = 0;
    while (offset < paddedData.length) {
      offset += cipher.processBlock(paddedData, offset, output, offset);
    }

    return output;
  }

  String _shiftString(String str, int shift) {
    return str
        .split('')
        .map((char) => String.fromCharCode(char.codeUnitAt(0) + shift))
        .join('');
  }

  int _pinObject(int ptr) {
    if (ptr != 0) {
      final count = refCounts[ptr];
      if (count != null) {
        refCounts[ptr] = count + 1;
      } else {
        final pinned = (instance.getFunction('__pin')!.call([ptr])[0] as int);
        refCounts[pinned] = 1;
      }
    }
    return ptr;
  }

  void _unpinObject(int ptr) {
    if (ptr != 0) {
      final count = refCounts[ptr];
      if (count == 1) {
        instance.getFunction('__unpin')!.call([ptr]);
        refCounts.remove(ptr);
      } else if (count != null) {
        refCounts[ptr] = count - 1;
      } else {
        throw Exception('invalid refcount $count for reference $ptr');
      }
    }
  }
}
