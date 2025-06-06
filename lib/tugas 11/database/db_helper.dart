import 'package:belajar_flutter/tugas%2011/database/model/user_model3.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelperAktivitas {
  static Future<Database> db() async {
    final dbpath = await getDatabasesPath();
    return openDatabase(
      version: 1,
      join(dbpath, 'Daftar.db'),
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE users (
            id INTEGER PRIMARY KEY AUTOINCREMENT, 
            nama TEXT,
            aktivitas TEXT, 
            umur INTEGER, 
            deskripsi TEXT
          )
        ''');
      },
    );
  }

  static Future<void> insertDaftar(DaftarModel daftar) async {
    final db = await DBHelperAktivitas.db();

    await db.insert(
      'users',
      daftar.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print('users registered succesfully');
  }

  static Future<List<DaftarModel>> getAllDaftar() async {
    final db = await DBHelperAktivitas.db();
    final List<Map<String, dynamic>> maps = await db.query('users');

    return List.generate(maps.length, (i) => DaftarModel.fromMap(maps[i]));
  }

  // update
  static Future<void> updateDaftar(DaftarModel daftar) async {
    final db = await DBHelperAktivitas.db();
    await db.update(
      'users',
      daftar.toMap(),
      where: 'id = ?',
      whereArgs: [daftar.id],
    );
  }

  static Future<void> deleteDaftar(int id) async {
    final db = await DBHelperAktivitas.db();
    await db.delete('users', where: 'id = ?', whereArgs: [id]);
  }
}
