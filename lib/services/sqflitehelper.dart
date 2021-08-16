import 'package:flutter_flu/models/user.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfLiteHelper {
  Database db;
  final String tName = "highSchool";

  Future<void> open() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'ePapp.db');

    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
        create table highSchool ( 
          id integer primary key autoincrement, 
          name text not null,
          email text not null,
          phone text not null,
          password text not null,
          date text not null,
          statut text not null
          )
      ''');
    });
  }

  Future<User> insert(User user) async {
    await open();
    user.id = await db.insert(tName, user.toMap());
    await close();
    return user;
  }

  Future<User> getUser(String email) async {
    await open();
    List<Map<String, dynamic>> maps = await db?.query(
      tName,
      where: 'email = ?',
      whereArgs: [email],
    );
    await close();

    int l = maps?.length ?? 0;

    if (l > 0) {
      return User.fromMap(maps?.first);
    }
    return null;
  }

  Future<List<User>> getAllUser() async {
    await open();
    List<Map<String, dynamic>> maps = await db.query(tName);
    await close();
    return maps.map((userMap) => User.fromMap(userMap)).toList();
  }

  Future<List<User>> getFavorites() async {
    await open();
    List<Map<String, dynamic>> maps = await db?.query(
      tName,
      where: "isFavorite = ?",
      whereArgs: [1],
    );
    await close();
    return maps.map((userMap) => User.fromMap(userMap)).toList();
  }

  Future<int> delete(int id) async {
    await open();
    int a = await db?.delete(tName, where: 'id = ?', whereArgs: [id]);
    await close();
    return a;
  }

  Future<int> update(User user) async {
    await open();
    int a = await db?.update(
      tName,
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
    return a;
  }

  Future<void> close() async => db?.close();
}
