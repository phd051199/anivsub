abstract class DHA {
  Future<String> decryptM3u8(
    String data, {
    bool flag1 = true,
    bool flag2 = false,
    bool flag3 = false,
    bool flag4 = false,
    String? extra,
  });
  Future<String> getBlobUrl(String data);
}
