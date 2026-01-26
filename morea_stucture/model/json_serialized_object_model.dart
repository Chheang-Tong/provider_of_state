// import 'dart:convert';

// import 'package:drift/drift.dart';
// import 'package:morea_sale_management/core/enums/db_serialized_object_type_enum.dart';
// import 'package:morea_sale_management/core/repositories/local_databases/database.dart';
// import 'package:morea_sale_management/core/services/global_service.dart';

// class JsonSerializedObjectModel {
//   static final AppDatabase _localDatabase = GlobalService().localDatabase;

//   static SimpleSelectStatement<JsonSerializedObjects, JsonSerializedObject>
//   Function(DbSerializedObjectType objectType)
//   get selectStatement => (DbSerializedObjectType objectType) {
//     return _localDatabase.select(_localDatabase.jsonSerializedObjects)
//       ..where((tbl) => tbl.objectType.equals(objectType.dbValue));
//   };

//   static updateObjectToDatabase(
//     Map<String, dynamic>? data,
//     DbSerializedObjectType objectType,
//   ) async {
//     await _localDatabase.transaction(() async {
//       final dataToWrite = jsonEncode(data);
//       await (_localDatabase.delete(
//         _localDatabase.jsonSerializedObjects,
//       )..where((tbl) => tbl.objectType.equals(objectType.dbValue))).go();

//       if (data == null) return;

//       await _localDatabase
//           .into(_localDatabase.jsonSerializedObjects)
//           .insert(
//             JsonSerializedObjectsCompanion(
//               value: Value(dataToWrite),
//               objectType: Value(objectType.dbValue),
//             ),
//           );
//     });
//   }
// }
