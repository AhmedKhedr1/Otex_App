import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/Core/data/initial_data.dart';
import 'package:otex_app/Core/utils/App_Router.dart';
import 'package:otex_app/Features/Home/data/datasource/product_local_datasource.dart';
import 'package:otex_app/Features/Profile/data/datasource/plan_local_datasource.dart';
import 'package:otex_app/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PlanLocalDataSource.createTables();
  await ProductLocalDataSource.createTable();
  await PlanLocalDataSource.insertInitialPlans(InitialData.plans);
  await ProductLocalDataSource.insertInitialProducts(InitialData.products);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData(fontFamily: 'Tajawal'),
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: Locale('ar'),
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
  // final List<PlanModel> PlanList = [
  //   PlanModel(
  //     title: 'أساسية',
  //     price: '3,000ج.م',
  //     features: [
  //       FeatureModel(icon: Assets.acute, text: 'صلاحية الأعلان 30 يوم'),
  //     ],
  //     isRecommended: false,
  //   ),
  //   PlanModel(
  //     title: 'أكسترا',
  //     price: '3,000ج.م',
  //     features: [
  //       FeatureModel(icon: Assets.acute, text: 'صلاحية الأعلان 30 يوم'),
  //       FeatureModel(icon: Assets.rocket, text: 'رفع لأعلى القائمة كل 3 أيام'),
  //       FeatureModel(
  //         icon: Assets.keep,
  //         text: 'تثبيت فى مقاول صحى',
  //         Subtext: '( خلال ال48 ساعة القادمة )',
  //       ),
  //     ],
  //     isRecommended: false,
  //     numOfViews: 7,
  //   ),
  //   PlanModel(
  //     title: 'بلس',
  //     price: '3,000ج.م',
  //     features: [
  //       FeatureModel(icon: Assets.acute, text: 'صلاحية الأعلان 30 يوم'),
  //       FeatureModel(icon: Assets.rocket, text: 'رفع لأعلى القائمة كل 2 يوم'),
  //       FeatureModel(
  //         icon: Assets.keep,
  //         text: 'تثبيت فى مقاول صحى',
  //         Subtext: '( خلال ال48 ساعة القادمة )',
  //       ),
  //       FeatureModel(icon: Assets.globe, text: 'ظهور فى كل محافظات مصر'),
  //       FeatureModel(icon: Assets.workspace_premium, text: 'أعلان مميز'),
  //       FeatureModel(icon: Assets.keep, text: 'تثبيت فى مقاول صحى فى الجهراء'),
  //       FeatureModel(
  //         icon: Assets.keep,
  //         text: 'تثبيت فى مقاول صحى',
  //         Subtext: '( خلال ال48 ساعة القادمة )',
  //       ),
  //     ],
  //     isRecommended: true,
  //     Recommendedlabel: 'أفضل قيمة مقابل سعر',
  //     numOfViews: 18,
  //   ),
  //   PlanModel(
  //     title: 'سوبر',
  //     price: '3,000ج.م',
  //     features: [
  //       FeatureModel(icon: Assets.acute, text: 'صلاحية الأعلان 30 يوم'),
  //       FeatureModel(icon: Assets.rocket, text: 'رفع لأعلى القائمة كل 2 يوم'),
  //       FeatureModel(
  //         icon: Assets.keep,
  //         text: 'تثبيت فى مقاول صحى',
  //         Subtext: '( خلال ال48 ساعة القادمة )',
  //       ),
  //       FeatureModel(icon: Assets.globe, text: 'ظهور فى كل محافظات مصر'),
  //       FeatureModel(icon: Assets.workspace_premium, text: 'أعلان مميز'),
  //       FeatureModel(icon: Assets.keep, text: 'تثبيت فى مقاول صحى فى الجهراء'),
  //       FeatureModel(
  //         icon: Assets.keep,
  //         text: 'تثبيت فى مقاول صحى',
  //         Subtext: '( خلال ال48 ساعة القادمة )',
  //       ),
  //     ],
  //     isRecommended: true,
  //     Recommendedlabel: 'أعلى مشاهدات',
  //     numOfViews: 24,
  //   ),
  // ];


  // await ProductLocalDataSource.insertInitialProducts([
  //   ProductModel(
  //     name: 'جاكيت من الصوف مناسب',
  //     image: Assets.MenHoodie,
  //     price: '32,000,000جم/',
  //   ),
  //   ProductModel(
  //     name: 'جاكيت من الصوف مناسب',
  //     image: Assets.MenHoodie2,
  //     price: '32,000,000جم/',
  //   ),
  //   ProductModel(
  //     name: 'جاكيت من الصوف مناسب',
  //     image: Assets.Shoes,
  //     price: '32,000,000جم/',
  //   ),
  //   ProductModel(
  //     name: 'جاكيت من الصوف مناسب',
  //     image: Assets.MenHoodie,
  //     price: '32,000,000جم/',
  //   ),
  //   ProductModel(
  //     name: 'جاكيت من الصوف مناسب',
  //     image: Assets.MenHoodie2,
  //     price: '32,000,000جم/',
  //   ),
  //   ProductModel(
  //     name: 'جاكيت من الصوف مناسب',
  //     image: Assets.Shoes,
  //     price: '32,000,000جم/',
  //   ),
  // ]);