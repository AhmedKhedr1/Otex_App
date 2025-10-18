import 'package:otex_app/Core/database/app_database.dart';
import 'package:otex_app/Features/Profile/data/models/PlanModel .dart';
import 'package:otex_app/Features/Profile/data/models/FeatureModel.dart';
import 'package:sqflite/sqflite.dart';

class PlanLocalDataSource {
  static const String plansTable = 'plans';
  static const String featuresTable = 'features';

  static Future<void> createTables() async {
    final db = await AppDatabase.database;

    await db.execute('''
      CREATE TABLE IF NOT EXISTS $plansTable (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        price TEXT,
        isRecommended INTEGER,
        numOfViews INTEGER,
        recommendedLabel TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE IF NOT EXISTS $featuresTable (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        planId INTEGER,
        icon TEXT,
        text TEXT,
        subtext TEXT,
        FOREIGN KEY(planId) REFERENCES $plansTable(id)
      )
    ''');
  }

  static Future<int> insertPlan(PlanModel plan) async {
    final db = await AppDatabase.database;

    final planId = await db.insert(plansTable, {
      'title': plan.title,
      'price': plan.price,
      'isRecommended': plan.isRecommended ? 1 : 0,
      'numOfViews': plan.numOfViews,
      'recommendedLabel': plan.Recommendedlabel,
    });

    for (var feature in plan.features) {
      await db.insert(featuresTable, {
        'planId': planId,
        'icon': feature.icon,
        'text': feature.text,
        'subtext': feature.Subtext,
      });
    }

    return planId;
  }

  static Future<void> insertInitialPlans(List<PlanModel> plans) async {
    final db = await AppDatabase.database;

    final count = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(*) FROM $plansTable'),
    );

    if (count == 0) {
      print('🔹 جاري إدخال البيانات الأولية...');
      for (var plan in plans) {
        await insertPlan(plan);
      }
      print('✅ تم إدخال الخطط بنجاح في قاعدة البيانات');
    } else {
      print('ℹ️ قاعدة البيانات تحتوي بالفعل على بيانات');
    }
  }

  static Future<List<PlanModel>> getPlans() async {
    final db = await AppDatabase.database;
    final plansData = await db.query(plansTable);

    List<PlanModel> plans = [];

    for (var plan in plansData) {
      final featuresData = await db.query(
        featuresTable,
        where: 'planId = ?',
        whereArgs: [plan['id']],
      );

      final features = featuresData.map((f) {
        return FeatureModel(
          icon: f['icon'] as String,
          text: f['text'] as String,
          Subtext: f['subtext'] as String?,
        );
      }).toList();

      plans.add(
        PlanModel(
          title: plan['title'] as String,
          price: plan['price'] as String,
          isRecommended: (plan['isRecommended'] as int) == 1,
          numOfViews: plan['numOfViews'] as int?,
          Recommendedlabel: plan['recommendedLabel'] as String?,
          features: features,
        ),
      );
    }

    return plans;
  }
}
