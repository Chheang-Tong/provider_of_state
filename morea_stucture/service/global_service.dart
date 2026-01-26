// import 'dart:convert';
// import 'dart:ui' as ui;
// import 'package:app_settings/app_settings.dart';
// import 'package:chopper/chopper.dart';
// import 'package:currency_formatter/currency_formatter.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_app_info/flutter_app_info.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:http/http.dart' show ClientException;
// import 'package:logger/logger.dart';
// import '/core/constants/app_configs.dart';
// import '/core/constants/env.dart';
// import '/core/models/error_handler_model.dart';
// import '/core/repositories/local_databases/database.dart';
// import '/core/types/exception_with_title_message.dart';
// import '/generated_code/swagger.swagger.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:stacked/stacked.dart';

// import '../../generated/locale_keys.g.dart';

// const String specialDotChar = " • ";

// class GlobalService {
//   GlobalService._internal();

//   static final GlobalService _instance = GlobalService._internal();

//   factory GlobalService() {
//     return _instance;
//   }

//   static final Logger logger = Logger(
//     printer: PrettyPrinter(lineLength: 150, printEmojis: false),
//   );

//   late final AppDatabase _localDatabase = AppDatabase();
//   AppDatabase get localDatabase => _localDatabase;

//   static final GlobalKey<NavigatorState> _navigator =
//       GlobalKey<NavigatorState>();

//   GlobalKey<NavigatorState> get navigator => _navigator;
//   static BuildContext? get context => _navigator.currentContext;
//   double listViewCatchExtend = 5000;

//   late final String appVersionDisplayText =
//       "App Version ${AppInfo.of(context!).package.version.toString().replaceAll("+", " Build ")} Env. ${Env.name}";
//   //to make push style
//   Future<dynamic> pushNavigation(
//     Widget target, {
//     PageTransitionType pageTransitionType = PageTransitionType.fade,
//     bool fullScreenDialog = false,
//   }) async {
//     return await Navigator.push(
//       context!,
//       PageTransition(
//         child: target,
//         type: pageTransitionType,
//         fullscreenDialog: fullScreenDialog,
//         duration: const Duration(milliseconds: 250),
//         reverseDuration: const Duration(milliseconds: 250),
//       ),
//     );
//   }

//   pushReplacementNavigation(
//     Widget target, {
//     PageTransitionType pageTransitionType = PageTransitionType.fade,
//   }) {
//     Navigator.pushReplacement(
//       context!,
//       PageTransition(child: target, type: pageTransitionType),
//     );
//   }

//   popNavigation({dynamic result}) {
//     _navigator.currentState?.pop(result);
//   }

//   clearNavigationStack() {
//     _navigator.currentState?.popUntil((route) => route.isFirst);
//   }

//   String getCurrentLanguageCode() {
//     return EasyLocalization.of(context!)?.currentLocale?.languageCode ?? "en";
//   }

//   static Future<void> validateHttpResult(Response result) async {
//     if (result.isSuccessful) {
//       return;
//     }

//     if (result.bodyString.startsWith("{")) {
//       ErrorDto errorDto = ErrorDto.fromJson(jsonDecode(result.bodyString));
//       throw ExceptionWithTitleMessage(
//         errorDto.errors.join(". "),
//         title: errorDto.message,
//         code: errorDto.correlationId.substring(
//           errorDto.correlationId.lastIndexOf("-") + 1,
//         ),
//       );
//     } else {
//       throw Exception(
//         Env.isDebugging
//             ? result.bodyString
//             : LocaleKeys.something_went_wrong_try_again.tr(),
//       );
//     }
//   }

//   static bool validatePhoneNumber(String? phoneNumber) {
//     return phoneNumber != null &&
//         phoneNumber.isNotEmpty &&
//         RegExp(r'^[0][0-9]{8,9}$').hasMatch(phoneNumber);
//   }

//   static hideKeyboard() {
//     FocusScope.of(context!).unfocus();
//     FocusManager.instance.primaryFocus?.unfocus();
//   }

//   static bool validatePassword(String password) {
//     if (password.length < 8) return false;
//     if (!password.contains(RegExp(r"[a-z]"))) return false;
//     if (!password.contains(RegExp(r"[A-Z]"))) return false;
//     if (!password.contains(RegExp(r"[0-9]"))) return false;
//     if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) return false;
//     return true;
//   }

//   static Widget securedContextMenuItemBuilder(context, editableTextState) {
//     final List<ContextMenuButtonItem> buttonItems =
//         editableTextState.contextMenuButtonItems;
//     buttonItems.removeWhere((ContextMenuButtonItem buttonItem) {
//       return ![
//         ContextMenuButtonType.selectAll,
//         ContextMenuButtonType.paste,
//       ].contains(buttonItem.type);
//     });
//     return AdaptiveTextSelectionToolbar.buttonItems(
//       anchors: editableTextState.contextMenuAnchors,
//       buttonItems: buttonItems,
//     );
//   }

//   static Future<void> handleGenericError(
//     Object error,
//     StackTrace stackTrace, {
//     BaseViewModel? model,
//     String? title,
//     String? message,
//     String? assetPath,
//     Function? onDismissed,
//     bool? shouldShowDismissButton = true,
//   }) async {
//     if (Env.isDebugging) {
//       GlobalService.logger.e(error, stackTrace: stackTrace);
//     }

//     // Sentry.captureException(
//     //   error,
//     //   stackTrace: stackTrace,
//     // ).ignore();

//     if (model != null) {
//       model.setError(
//         ErrorHandlerModel()
//           ..title =
//               title ??
//               (error is ExceptionWithTitleMessage
//                   ? error.title
//                   : LocaleKeys.something_went_wrong.tr())
//           ..message =
//               message ??
//               (error is ExceptionWithTitleMessage
//                   ? error.msg
//                   : (error is ClientException
//                         ? LocaleKeys.could_not_connect_to_the_internet.tr()
//                         : error.toString()))
//           ..errorCode = error is ExceptionWithTitleMessage
//               ? "[${error.code ?? "UnknownServerError"}]"
//               : (error is ClientException
//                     ? "[ConnectivityProblem]"
//                     : "[UnknownLocalError]")
//           ..assetImagePath =
//               assetPath ?? "lib/assets/images/yello_exclaimation_mark.png"
//           ..onDismissed = error is ExceptionWithTitleMessage
//               ? error.onDismissed ?? onDismissed
//               : onDismissed
//           ..shouldShowDismissButton = shouldShowDismissButton,
//       );
//     }
//   }

//   static Future<Uint8List> getBytesFromAsset(String path, int width) async {
//     ByteData data = await rootBundle.load(path);
//     ui.Codec codec = await ui.instantiateImageCodec(
//       data.buffer.asUint8List(),
//       targetWidth: width,
//     );
//     ui.FrameInfo fi = await codec.getNextFrame();
//     return (await fi.image.toByteData(
//       format: ui.ImageByteFormat.png,
//     ))!.buffer.asUint8List();
//   }

//   static Future<BitmapDescriptor> getBitmapDescriptorFromAssetBytes(
//     String path,
//     int width,
//   ) async {
//     final pixelRatio = MediaQuery.of(context!).devicePixelRatio;
//     final Uint8List imageData = await getBytesFromAsset(
//       path,
//       (width / pixelRatio).toInt(),
//     );
//     return BitmapDescriptor.bytes(imageData);
//   }

//   static Future<Position> getCurrentUserLatLng() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     const String errorCode = "DevicePermissionError";

//     // Test if location services are enabled.
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       // Location services are not enabled don't continue
//       // accessing the position and request users of the
//       // App to enable the location services.
//       return Future.error(
//         ExceptionWithTitleMessage(
//           LocaleKeys
//               .location_services_are_disabled_please_enable_the_service_to_continue
//               .tr(),
//           title: LocaleKeys.something_went_wrong.tr(),
//           code: errorCode,
//         ),
//       );
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         // Permissions are denied, next time you could try
//         // requesting permissions again (this is also where
//         // Android's shouldShowRequestPermissionRationale
//         // returned true. According to Android guidelines
//         // your App should show an explanatory UI now.
//         return Future.error(
//           ExceptionWithTitleMessage(
//             LocaleKeys
//                 .location_permissions_are_denied_please_allow_the_permission_to_continue
//                 .tr(),
//             title: LocaleKeys.something_went_wrong.tr(),
//             code: errorCode,
//           ),
//         );
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       // Permissions are denied forever, handle appropriately.
//       return Future.error(
//         ExceptionWithTitleMessage(
//           LocaleKeys
//               .location_permissions_are_permanently_denied_we_cannot_request_permissions_please_enable_it_manually_from_device_settings
//               .tr(),
//           title: LocaleKeys.something_went_wrong.tr(),
//           onDismissed: () {
//             //FlutterOpenAppSettings.openAppsSettings(settingsCode: SettingsCode.APP_SETTINGS);
//             AppSettings.openAppSettings(type: AppSettingsType.settings);
//           },
//           code: errorCode,
//         ),
//       );
//     }

//     // When we reach here, permissions are granted and we can
//     // continue accessing the position of the device.
//     return await Geolocator.getCurrentPosition();
//   }

//   static String getFormattedCurrencyText(num? input) {
//     if (input == null) return "";

//     return CurrencyFormatter.format(
//       input,
//       AppConfig.usdCurrencyFormatter,
//       decimal: 2,
//       enforceDecimals: true,
//     );
//   }
// }
