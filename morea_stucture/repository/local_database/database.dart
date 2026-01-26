// import 'dart:io';

// import 'package:drift/drift.dart';
// import 'package:drift/native.dart';
// import 'package:flutter/services.dart';
// import 'package:morea_sale_management/core/services/global_service.dart';
// import 'package:morea_sale_management/core/services/local_service.dart';
// import 'package:path/path.dart' as p;
// import 'package:path_provider/path_provider.dart';
// import 'package:sqlcipher_flutter_libs/sqlcipher_flutter_libs.dart';
// import 'package:sqlite3/open.dart';

// part 'database.g.dart';

// @DriftDatabase(include: {'tables.drift'})
// class AppDatabase extends _$AppDatabase {
//   AppDatabase() : super(_openConnection());

//   @override
//   int get schemaVersion => 1;
// }

// LazyDatabase _openConnection() {
//   // Do this before using any sqlite3 api
//   open.overrideFor(OperatingSystem.android, openCipherOnAndroid);

//   // the LazyDatabase util lets us find the right location for the file async.
//   return LazyDatabase(() async {
//     // put the database file, called db.sqlite here, into the documents folder
//     // for your app.
//     final dbFolder = await getApplicationDocumentsDirectory();
//     final file = File(p.join(dbFolder.path, 'database.db'));

//     final String passphrase = await LocalService.getSecuredKey("databaseKey");
//     final token = RootIsolateToken.instance!;

//     return NativeDatabase.createInBackground(
//       file,
//       isolateSetup: () async {
//         BackgroundIsolateBinaryMessenger.ensureInitialized(token);
//         await setupSqlCipher();
//       },
//       setup: (rawDb) {
//         try {
//           rawDb.execute("PRAGMA key = '$passphrase';");
//         } catch (error, stackTrace) {
//           GlobalService.handleGenericError(error, stackTrace);
//         }

//         rawDb.execute('select count(*) from sqlite_master');
//       },
//     );
//   });
// }

// // call this method before using drift
// Future<void> setupSqlCipher() async {
//   await applyWorkaroundToOpenSqlCipherOnOldAndroidVersions();
//   open.overrideFor(OperatingSystem.android, openCipherOnAndroid);
// }
