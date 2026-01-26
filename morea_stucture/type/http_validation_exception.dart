class HttpValidationException implements Exception {
  final String msg;
  final Map validationMessage;
  const HttpValidationException(this.msg, this.validationMessage);
  @override
  String toString() => '$validationMessage';
}
