import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'dart:io' as io;

import '../models/userModel.dart';

class DbHelper {
  static late Database _db;

  static const String DB_Name = 'test.db';
  static const String Table_User = 'user';
  static const int Version = 1;


  static const String C_UserName = 'user_name';
  static const String C_Email = 'email';
  static const String C_Password = 'password';

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();

    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {
    await db.execute("CREATE TABLE $Table_User ("
        
        "$C_UserName TEXT,"
        "$C_Email TEXT, "
        "$C_Password TEXT, "
        "PRIMARY KEY ($C_UserName)"

        " )");
  }
  Future<UserModel> saveData(UserModel user) async {
    var dbClient = await db;
    user.user_name = await dbClient.insert(Table_User, user.toMap()) as String;
    return user;
    
  }
}
