import 'package:belajar_flutter/meet_16/model/user_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> initDB() async {
    final dbpath = await getDatabasesPath();
    return openDatabase(
      version: 1,
      join(dbpath, 'ppkd_b_2.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE users(id INTEGER KEY AUTOINCREMENT, name TEXT,username TEXT, email TEXT,phone TEXT,password TEXT)',
        );
      },
    );
  }

  static Future<void> registerUser({UserModel? data}) async {
    final db = await initDB();

    await db.insert('user', {
      'name': data?.name,
      'username': data?.username,
      'email': data?.email,
      'phone': data?.phone,
      'password': data?.password,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
    print("user register succesfully");
  }

  static Future<UserModel?> login(String email, String password) async {
    final db = await initDB();
    final List<Map<String, dynamic>> data = await db.query(
      "users",
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );
    if (data.isNotEmpty) {
      return UserModel.fromMap(data.first);
    } else {
      return null;
    }
  }
}
