// import 'dart:async';

// import 'package:chopper/chopper.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:morea_sale_management/core/constants/env.dart';
// import 'package:morea_sale_management/ui/views/sign_in_view.dart';
// import 'package:pretty_chopper_logger/pretty_chopper_logger.dart';

// import '../../generated_code/client_index.dart';
// import '../enums/local_service.dart';
// import 'global_service.dart';
// import 'local_service.dart';

// class ApiProviderService {
//   ApiProviderService._internal();

//   static final ApiProviderService _instance = ApiProviderService._internal();

//   factory ApiProviderService() {
//     return _instance;
//   }

//   static Swagger getRestClient() {
//     return Swagger.create(
//       baseUrl: Uri.parse(Env.baseApiUrl),
//       interceptors: Env.shouldShowApiLog
//           ? [
//               AuthenticationCheckerInterceptor(),
//               MyResponseInterceptor(),
//               PrettyChopperLogger(),
//             ]
//           : [AuthenticationCheckerInterceptor()],
//     );
//   }
// }

// class AuthenticationCheckerInterceptor implements Interceptor {
//   @override
//   FutureOr<Response<BodyType>> intercept<BodyType>(
//     Chain<BodyType> chain,
//   ) async {
//     final token = LocalService().getSavedValue(LocalDataFieldName.userToken);
//     final request = chain.request;
//     final updatedRequest = applyHeaders(
//       request,
//       token == null
//           ? {"Content-Type": "application/json", "Accept": "application/json"}
//           : {
//               "Content-Type": "application/json",
//               "Accept": "application/json",
//               "Authorization": "Bearer $token",
//             },
//     );
//     return await chain.proceed(updatedRequest);
//   }
// }

// class MyResponseInterceptor implements Interceptor {
//   @override
//   FutureOr<Response<BodyType>> intercept<BodyType>(
//     Chain<BodyType> chain,
//   ) async {
//     final response = await chain.proceed(chain.request);
//     if (response.isSuccessful == false && response.statusCode == 401) {
//       LocalService().deleteSavedValue(LocalDataFieldName.userToken);
//       GlobalService().clearNavigationStack();
//       GlobalService().pushReplacementNavigation(const SignInView());
//       Fluttertoast.showToast(msg: 'Your session has been expired!');
//     }

//     try {
//       if (Env.shouldShowApiLog || Env.isDebugging)
//         GlobalService.logger.i(response.statusCode);
//       if (Env.shouldShowApiLog || Env.isDebugging)
//         GlobalService.logger.i(response.body);
//     } catch (error) {}

//     return response;
//   }
// }
