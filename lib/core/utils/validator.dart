class Validator<T> {

  Validator(this._validators);
  final List<String? Function(T)> _validators;

  String? validate(T value) {
    for (var validator in _validators) {
      final result = validator(value);
      if (result != null) {
        return result;
      }
    }
    return null;
  }
}
