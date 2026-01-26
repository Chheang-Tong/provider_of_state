// import 'package:easy_localization/easy_localization.dart';
// import 'package:morea_sale_management/generated/locale_keys.g.dart';

class ErrorHandlerModel {
  // String? title = LocaleKeys.something_went_wrong.tr();
  // String? message = LocaleKeys.something_went_wrong_try_again.tr();
  String? errorCode;
  bool? shouldShowDismissButton = true;
  bool? popup = true;
  String? assetImagePath;
  Function? retryFunction;
  Function? onDismissed;

  ErrorHandlerModel();
}
