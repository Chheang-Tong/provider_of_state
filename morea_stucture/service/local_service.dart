// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:hive/hive.dart';
// import 'package:path_provider/path_provider.dart';

// import '../enums/local_service.dart';

// class LocalService {
//   LocalService._internal();

//   static final LocalService _instance = LocalService._internal();

//   factory LocalService() {
//     return _instance;
//   }

//   late Box _localObjectBox;

//   getInstance() async {
//     final directory = await getApplicationDocumentsDirectory();

//     if (Platform.isMacOS) {
//       Hive.init(directory.path);
//       _localObjectBox = await Hive.openBox('APP_DATA');
//       return;
//     }

//     const storage = FlutterSecureStorage();

//     String? encryptKey = await storage.read(key: "key");

//     if (encryptKey == null) {
//       var key1 = Hive.generateSecureKey();
//       await storage.write(key: "key", value: base64.encode(key1));
//       encryptKey = await storage.read(key: "key");
//     }

//     List<int> key = base64.decode(encryptKey!);

//     Hive.init(directory.path);
//     _localObjectBox = await Hive.openBox(
//       'APP_DATA',
//       encryptionCipher: HiveAesCipher(key),
//     );
//   }

//   Future<void> saveValue(
//     LocalDataFieldName localDataFieldName,
//     dynamic value,
//   ) async {
//     await _localObjectBox.put(localDataFieldName.toString(), value);
//   }

//   dynamic getSavedValue(LocalDataFieldName localDataFieldName) {
//     return _localObjectBox.get(localDataFieldName.toString());
//   }

//   Future<void> deleteSavedValue(LocalDataFieldName localDataFieldName) async {
//     await _localObjectBox.delete(localDataFieldName.toString());
//   }

//   Future<int> deleteAllSavedValue() async {
//     return await _localObjectBox.clear();
//   }

//   static Future<String> getSecuredKey(String keyName) async {
//     const FlutterSecureStorage storage = FlutterSecureStorage();

//     String? encryptKey = await storage.read(key: keyName);

//     if (encryptKey == null) {
//       var key1 = Hive.generateSecureKey();
//       await storage.write(key: keyName, value: base64.encode(key1));
//       encryptKey = await storage.read(key: keyName);
//     }

//     return encryptKey!;
//   }
// }
