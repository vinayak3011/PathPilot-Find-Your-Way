// import 'package:pathpilot/SQLite/sqlite.dart';
// import 'package:pathpilot/JsonModels/users.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// class DatabaseHelper {
//   // Your existing code...
//
//   // Retrieve user's full name from the database
//
//
//   Future<Database> initDB() async {
//     final databasePath = await getDatabasesPath();
//     return openDatabase(path, version: 1, onCreate: (db, version) async {
//     });
//   }
//
//
//   Future<bool> login(Users user) async {
//     final Database db = await initDB();
//
//     // I forgot the password to check
//     var result = await db.rawQuery(
//         "select * from users where usrName = '${user.usrName}' AND usrPassword = '${user.password}'");
//     if (result.isNotEmpty) {
//       return true;
//     } else {
//       return false;
//     }
//   }
// }
