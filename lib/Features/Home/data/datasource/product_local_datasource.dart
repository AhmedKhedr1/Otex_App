import 'package:otex_app/Core/database/app_database.dart';
import 'package:otex_app/Features/Home/data/models/Product_model.dart';
import 'package:sqflite/sqflite.dart';

class ProductLocalDataSource {
  static const String tableName = 'products';

  static Future<void> createTable() async {
    final db = await AppDatabase.database;

    await db.execute('''
      CREATE TABLE IF NOT EXISTS $tableName (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        image TEXT,
        price TEXT
      )
    ''');
  }

  static Future<int> insertProduct(ProductModel product) async {
    final db = await AppDatabase.database;
    return await db.insert(tableName, {
      'name': product.name,
      'image': product.image,
      'price': product.price,
    });
  }

  static Future<void> insertInitialProducts(List<ProductModel> products) async {
    final db = await AppDatabase.database;

    final count = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(*) FROM $tableName'),
    );

    if (count == 0) {
      print(' جاري إدخال المنتجات الأولية...');
      for (var product in products) {
        await insertProduct(product);
      }
      print(' تم إدخال المنتجات بنجاح في قاعدة البيانات');
    } else {
      print('ℹ قاعدة البيانات تحتوي بالفعل على منتجات');
    }
  }

  static Future<List<ProductModel>> getProducts() async {
    final db = await AppDatabase.database;
    final data = await db.query(tableName);

    return data.map((row) {
      return ProductModel(
        name: row['name'] as String,
        image: row['image'] as String,
        price: row['price'] as String,
      );
    }).toList();
  }
}
