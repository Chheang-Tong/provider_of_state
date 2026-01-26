// import '../../../generated_code/swagger.swagger.dart';
// import '../../../ui/views/salesman/salesman_store_detail_view.dart';
// // import '../../models/salesman_model.dart';
// import '../../constants/app_configs.dart';
// import '../../models/salesman_model.dart';
// import '../../services/global_service.dart';
// import '../../services/notification_service.dart';
// import '/core/view_models/base_view_model_store_list.dart';

// class SalesmanStoreListViewModel extends BaseViewModelStoreList {
//   @override
//   getInstance(num radius) async {
//     NotificationService().getInstance().ignore();
//     await super.getInstance(radius);
//     setInitialised(true);
//     rebuildUi();
//   }

//   void onCheckInPressed(double nearbyStoreId) async {
//     try {
//       setBusy(true);
//       // final currentLocation = await GlobalService.getCurrentUserLatLng();
//       // final nearbyStoreId = await SalesmanModel.getNearByStoreForCheckIn(
//       //     lat: currentLocation.latitude, lng: currentLocation.longitude);

//       GlobalService().pushNavigation(
//         SalesmanStoreDetailView(0, nearbyStoreId.toInt()),
//       );
//     } catch (error, stackTrace) {
//       await GlobalService.handleGenericError(error, stackTrace, model: this);
//     } finally {
//       setBusy(false);
//       rebuildUi();
//     }
//   }
// }
