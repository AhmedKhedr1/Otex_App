import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  Future initdatabase() async {
    final databasepath = await getDatabasesPath();
    final mydatabasename = 'Task.db';
    final path = join(databasepath, mydatabasename);
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('Create Table products (id INTEGER PRIMARY KEY ,)');
      },
    );
  }
}
