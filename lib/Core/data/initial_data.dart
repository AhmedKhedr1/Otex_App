import 'package:otex_app/Core/utils/Assets.dart';
import 'package:otex_app/Features/Home/data/models/Product_model.dart';
import 'package:otex_app/Features/Profile/data/models/FeatureModel.dart';
import 'package:otex_app/Features/Profile/data/models/PlanModel%20.dart';

class InitialData {
   static final List<PlanModel> plans=[
    PlanModel(
      title: 'أساسية',
      price: '3,000ج.م',
      features: [
        FeatureModel(icon: Assets.acute, text: 'صلاحية الأعلان 30 يوم'),
      ],
      isRecommended: false,
    ),
    PlanModel(
      title: 'أكسترا',
      price: '3,000ج.م',
      features: [
        FeatureModel(icon: Assets.acute, text: 'صلاحية الأعلان 30 يوم'),
        FeatureModel(icon: Assets.rocket, text: 'رفع لأعلى القائمة كل 3 أيام'),
        FeatureModel(
          icon: Assets.keep,
          text: 'تثبيت فى مقاول صحى',
          Subtext: '( خلال ال48 ساعة القادمة )',
        ),
      ],
      isRecommended: false,
      numOfViews: 7,
    ),
    PlanModel(
      title: 'بلس',
      price: '3,000ج.م',
      features: [
        FeatureModel(icon: Assets.acute, text: 'صلاحية الأعلان 30 يوم'),
        FeatureModel(icon: Assets.rocket, text: 'رفع لأعلى القائمة كل 2 يوم'),
        FeatureModel(
          icon: Assets.keep,
          text: 'تثبيت فى مقاول صحى',
          Subtext: '( خلال ال48 ساعة القادمة )',
        ),
        FeatureModel(icon: Assets.globe, text: 'ظهور فى كل محافظات مصر'),
        FeatureModel(icon: Assets.workspace_premium, text: 'أعلان مميز'),
        FeatureModel(icon: Assets.keep, text: 'تثبيت فى مقاول صحى فى الجهراء'),
        FeatureModel(
          icon: Assets.keep,
          text: 'تثبيت فى مقاول صحى',
          Subtext: '( خلال ال48 ساعة القادمة )',
        ),
      ],
      isRecommended: true,
      Recommendedlabel: 'أفضل قيمة مقابل سعر',
      numOfViews: 18,
    ),
    PlanModel(
      title: 'سوبر',
      price: '3,000ج.م',
      features: [
        FeatureModel(icon: Assets.acute, text: 'صلاحية الأعلان 30 يوم'),
        FeatureModel(icon: Assets.rocket, text: 'رفع لأعلى القائمة كل 2 يوم'),
        FeatureModel(
          icon: Assets.keep,
          text: 'تثبيت فى مقاول صحى',
          Subtext: '( خلال ال48 ساعة القادمة )',
        ),
        FeatureModel(icon: Assets.globe, text: 'ظهور فى كل محافظات مصر'),
        FeatureModel(icon: Assets.workspace_premium, text: 'أعلان مميز'),
        FeatureModel(icon: Assets.keep, text: 'تثبيت فى مقاول صحى فى الجهراء'),
        FeatureModel(
          icon: Assets.keep,
          text: 'تثبيت فى مقاول صحى',
          Subtext: '( خلال ال48 ساعة القادمة )',
        ),
      ],
      isRecommended: true,
      Recommendedlabel: 'أعلى مشاهدات',
      numOfViews: 24,
    ),
  ];

static final List<ProductModel> products = [ProductModel(
      name: 'جاكيت من الصوف مناسب',
      image: Assets.MenHoodie,
      price: '32,000,000جم/',
    ),
    ProductModel(
      name: 'جاكيت من الصوف مناسب',
      image: Assets.MenHoodie2,
      price: '32,000,000جم/',
    ),
    ProductModel(
      name: 'جاكيت من الصوف مناسب',
      image: Assets.Shoes,
      price: '32,000,000جم/',
    ),
    ProductModel(
      name: 'جاكيت من الصوف مناسب',
      image: Assets.MenHoodie,
      price: '32,000,000جم/',
    ),
    ProductModel(
      name: 'جاكيت من الصوف مناسب',
      image: Assets.MenHoodie2,
      price: '32,000,000جم/',
    ),
    ProductModel(
      name: 'جاكيت من الصوف مناسب',
      image: Assets.Shoes,
      price: '32,000,000جم/',
    ),];

}