import 'package:belajar_flutter/studycase16/model/user_model2.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Future<Database> db() async {
    final dbpath = await getDatabasesPath();
    return openDatabase(
      version: 1,
      join(dbpath, 'siswa.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT ,umur INTEGER)',
        );
      },
    );
  }

  static Future<void> insertSiswa(Siswa siswa) async {
    final db = await DBHelper.db();

    await db.insert(
      'users',
      siswa.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print('user registered succesfully');
  }

  static Future<List<Siswa>> getAllSiswa() async {
    final db = await DBHelper.db();
    final List<Map<String, dynamic>> maps = await db.query('users');

    return List.generate(maps.length, (i) => Siswa.fromMap(maps[i]));
  }
}
