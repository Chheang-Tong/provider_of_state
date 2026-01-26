// import 'package:flutter/material.dart';
// import 'package:heroicons_flutter/heroicons_flutter.dart';
// import 'package:stacked/stacked.dart';

// import '../../../core/extensions/string_extension.dart';
// import '../../../core/view_models/salesman/salesman_store_list_model.dart';
// import '../../widgets/default_app_background_widget.dart';
// import '../../widgets/view_model_state_overlay.dart';

// class SaleMainStoreLists extends StackedView<SalesmanStoreListViewModel> {
//   const SaleMainStoreLists(this.lat, this.lng, this.radius, {super.key});
//   final num lat;
//   final num lng;
//   final num radius;

//   @override
//   SalesmanStoreListModel viewModelBuilder(BuildContext context) {
//     return SalesmanStoreListModel();
//   }

//   @override
//   void onViewModelReady(SalesmanStoreListModel viewModel) {
//     viewModel.getInstance(radius);
//     super.onViewModelReady(viewModel);
//   }

//   @override
//   Widget builder(
//     BuildContext context,
//     SalesmanStoreListModel viewModel,
//     Widget? child,
//   ) {
//     return ViewModelStateOverlay<SalesmanStoreListModel>(
//       child: Scaffold(
//         appBar: AppBar(title: const Text('Check In Store')),
//         body: Stack(
//           fit: StackFit.expand,
//           children: [
//             const DefaultAppBackgroundWidget(),
//             SingleChildScrollView(
//               padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//               child: Column(
//                 children: List.generate(
//                   viewModel.listStore.length,
//                   (i) => storeList(
//                     context: context,
//                     storeName: viewModel.listStore[i].storeName ?? 'N/A',
//                     qr: viewModel.listStore[i].storeCode ?? 'N/A',
//                     phoneNumber:
//                         viewModel.listStore[i].contactNumber
//                             .asFormattedPhoneNumber() ??
//                         "",
//                     onTap: () =>
//                         viewModel.onCheckInPressed(viewModel.listStore[i].id),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget storeList({
//     required BuildContext context,
//     required String storeName,
//     required String qr,
//     required String phoneNumber,
//     required Function onTap,
//   }) {
//     Size size = MediaQuery.of(context).size;
//     return GestureDetector(
//       onTap: () => onTap(),
//       child: Container(
//         height: 108,
//         width: size.width,
//         margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           color: Colors.white,
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(
//               "lib/assets/images/store_image_place_holder.png",
//               width: 48,
//               height: 48,
//             ),
//             const SizedBox(width: 16),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(storeName, style: Theme.of(context).textTheme.bodyLarge),
//                 Row(
//                   children: [
//                     const Icon(
//                       HeroiconsSolid.qrCode,
//                       size: 16,
//                       color: Color(0xFFD6D3D1),
//                     ),
//                     const SizedBox(width: 8),
//                     Text(
//                       qr,
//                       style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                         color: const Color(0xFF78716C),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     const Icon(
//                       HeroiconsSolid.phone,
//                       size: 16,
//                       color: Color(0xFFD6D3D1),
//                     ),
//                     const SizedBox(width: 8),
//                     Text(
//                       formatPhoneNumber(phoneNumber),
//                       style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                         color: const Color(0xFF78716C),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   String formatPhoneNumber(String phone) {
//     if (phone.length < 10) return phone;

//     return '${phone.substring(0, 3)} '
//         '${phone.substring(3, 6)} '
//         '${phone.substring(6)}';
//   }
// }
