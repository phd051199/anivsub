Future<void> waitUtil(bool Function() condition) async {
  await Future.doWhile(() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return condition();
  });
}
