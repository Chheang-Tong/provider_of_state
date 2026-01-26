class ExceptionWithTitleMessage implements Exception {
  final String? title;
  final String msg;
  final String? code;
  final Function? onDismissed;

  const ExceptionWithTitleMessage(
    this.msg, {
    this.title,
    this.onDismissed,
    this.code,
  });

  @override
  String toString() => "$title: $msg [$code]";
}
