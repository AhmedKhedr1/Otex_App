import 'package:go_router/go_router.dart';
import 'package:otex_app/Features/Filtering/Presentation/Views/Filtering_View.dart';
import 'package:otex_app/Features/Home/presentation/Views/Home_View.dart';

abstract class AppRouter {
  static const String KHomeView = '/';
  static const String KFilteringView = '/FilteringView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: KHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: KFilteringView,
        builder: (context, state) => FilteringView(),
      ),
    ],
  );
}
