// import 'package:drift/drift.dart';
// import 'package:flutter_cache_manager/flutter_cache_manager.dart';
// import 'package:http/http.dart';
// import 'package:http_parser/http_parser.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:mime/mime.dart';
// import 'package:morea_sale_management/core/enums/local_service.dart';
// import 'package:morea_sale_management/core/repositories/local_databases/database.dart';
// import 'package:morea_sale_management/core/services/api_provider_service.dart';
// import 'package:morea_sale_management/core/services/global_service.dart';
// import 'package:morea_sale_management/core/services/local_service.dart';
// import 'package:morea_sale_management/core/services/notification_service.dart';
// import 'package:morea_sale_management/generated_code/swagger.swagger.dart';

// class UserModel {
//   static bool get isSignedIn =>
//       LocalService().getSavedValue(LocalDataFieldName.userToken) != null;

//   static Future<ResponseAuthDto?> signIn(
//     String phoneNumber,
//     String password,
//   ) async {
//     final result = await ApiProviderService.getRestClient()
//         .requestAuthServiceAuthLoginWithPhoneNumber(
//           body: RequestLoginPhoneNumberDto(
//             password: password,
//             phoneNumber: phoneNumber,
//           ),
//         );

//     await GlobalService.validateHttpResult(result);

//     await LocalService().saveValue(
//       LocalDataFieldName.userToken,
//       result.body?.accessToken,
//     );

//     return result.body;
//   }

//   static Future<ResponseGetMe?> getProfileInfo() async {
//     final result = await ApiProviderService.getRestClient()
//         .getAuthServiceAuthMe();

//     await GlobalService.validateHttpResult(result);

//     await result.body?.updateLocalDatabase();

//     final notificationTopic = "USER_${result.body?.id.toInt()}";

//     NotificationService().subscribeToTopic(notificationTopic).ignore();
//     await LocalService().saveValue(
//       LocalDataFieldName.notificationTopic,
//       notificationTopic,
//     );

//     return result.body;
//   }

//   static Future<void> updateProfileImage(XFile selectedFile) async {
//     final uploadResult = await ApiProviderService.getRestClient()
//         .requestImageUpload(
//           files: [
//             await MultipartFile.fromPath(
//               "files",
//               selectedFile.path,
//               contentType: MediaType.parse(
//                 lookupMimeType(selectedFile.path) ?? "image/png",
//               ),
//             ),
//           ],
//         );

//     await GlobalService.validateHttpResult(uploadResult);

//     final result = await ApiProviderService.getRestClient()
//         .putAuthServiceAuthUpdateProfile(
//           body: UpdateProfileDto(
//             imageName: uploadResult.body!.fileName,
//             description: "",
//           ),
//         );

//     await GlobalService.validateHttpResult(uploadResult);

//     await result.body.updateLocalDatabase();
//   }

//   static Future<ResponseSuccessDto> changePassword(
//     String currentPassword,
//     String newPassword,
//     String confirmPassword,
//   ) async {
//     final requestBody = ChangePasswordAuthDto(
//       currentPassword: currentPassword,
//       newPassword: newPassword,
//       confirmPassword: confirmPassword,
//     );
//     final result = await ApiProviderService.getRestClient()
//         .putAuthServiceAuthChangePassword(body: requestBody);

//     await GlobalService.validateHttpResult(result);

//     return result.bodyOrThrow;
//   }

//   static Future<void> clearCurrentUserSession() async {
//     final notificationTopic = LocalService().getSavedValue(
//       LocalDataFieldName.notificationTopic,
//     );
//     if (notificationTopic != null)
//       NotificationService()
//           .unSubscribeFromTopic(notificationTopic.toString())
//           .ignore();
//     ApiProviderService.getRestClient().getAuthServiceAuthLogOut().ignore();
//     for (var table in GlobalService().localDatabase.allTables) {
//       await table.deleteAll();
//     }
//     await LocalService().deleteAllSavedValue();
//   }

//   static Future<void> updateCheckedInStoreInfo({
//     required int? routeId,
//     required int? storeId,
//     required String? storeName,
//     required String? storeCode,
//     required DateTime? checkedInDateTime,
//     int? todayRoutePlanCount,
//     int? totalUncompletedOrderCount,
//   }) async {
//     final db = GlobalService().localDatabase;

//     MyProfileCompanion dataToWrite = MyProfileCompanion(
//       checkedInRouteId: Value(routeId),
//       checkedInStoreId: Value(storeId),
//       checkedInStoreName: Value(storeName),
//       checkedInStoreCode: Value(storeCode),
//       checkedInDateTime: Value(checkedInDateTime?.toIso8601String()),
//     );

//     if (todayRoutePlanCount != null) {
//       dataToWrite = dataToWrite.copyWith(
//         todayRoutePlanCount: Value(todayRoutePlanCount),
//       );
//     }

//     if (totalUncompletedOrderCount != null) {
//       dataToWrite = dataToWrite.copyWith(
//         uncompletedOrderCount: Value(totalUncompletedOrderCount),
//       );
//     }

//     await db.update(db.myProfile).write(dataToWrite);
//   }
// }

// extension on ResponseGetMe? {
//   updateLocalDatabase() async {
//     Uint8List? imageByte;

//     try {
//       imageByte = (await DefaultCacheManager().getSingleFile(
//         this?.imageUrl ?? "",
//       )).readAsBytesSync();
//     } catch (error, stacktrace) {
//       await GlobalService.handleGenericError(error, stacktrace);
//     }

//     final data = MyProfileCompanion(
//       id: Value(this?.id.toInt() ?? -1),
//       firstName: Value(this?.firstName),
//       lastName: Value(this?.lastName),
//       fullName: Value(this?.fullName),
//       imageUrl: Value(this?.imageUrl),
//       imageByte: Value(imageByte),
//       phoneNumber: Value(this?.phoneNumber),
//       address: Value(this?.address),
//       roleId: Value(this?.role.id.toInt()),
//       roleName: Value(this?.role.roleName),
//       reportedToName: Value(this?.reportTo?.fullName),
//       reportedToRole: Value(this?.reportTo?.role),
//     );

//     final db = GlobalService().localDatabase;

//     final existingRecordCount = await db.myProfile.count().getSingle();

//     if (existingRecordCount == 0) {
//       await db.myProfile.insertOne(data);
//     } else {
//       await db.update(db.myProfile).write(data);
//     }
//   }
// }
