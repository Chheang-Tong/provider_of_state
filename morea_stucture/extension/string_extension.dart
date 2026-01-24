extension StringExtension on String? {
  String asFormattedPhoneNumber() {
    if (this == null || (this?.length != null && this!.length < 9)) return "";

    return "${this!.substring(0, 3)} ${this!.substring(3, 6)} ${this!.substring(6)}";
  }

  String? cleanUp() {
    return this?.replaceAll("\r", " ").replaceAll("\n", " ");
  }
}
