// import 'dart:async';

// import 'package:stacked/stacked.dart';

// import '../../generated_code/swagger.swagger.dart';
// import '../models/store_nearby_model.dart';
// import '../services/global_service.dart';

// class BaseViewModelStoreList extends BaseViewModel {
//   List<NearbyStoreDto> listStore = [];

//   Future<void> getInstance(num radius) async {
//     try {
//       setBusy(true);

//       final location = await GlobalService.getCurrentUserLatLng();
//       // final num? radius = await StoresNearbyModel.getDistanceMeterCheckIn();
//       // final num radius =await StoresNearbyModel.getDistanceMeterCheckIn().
//       final result = await StoresNearbyModel.getSaleMenStoresNearby(
//         location.latitude,
//         location.longitude,
//         radius,
//       );

//       listStore = result ?? [];
//     } catch (e, s) {
//       await GlobalService.handleGenericError(e, s, model: this);
//     } finally {
//       setBusy(false);
//       notifyListeners(); // IMPORTANT
//     }
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }
// }
