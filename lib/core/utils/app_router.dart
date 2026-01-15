import 'package:gallery_app/features/gallery/presentation/views/gallery_view.dart';
import 'package:gallery_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String splash = '/';
  static const String gallery = '/gallery';
  static  final router = GoRouter(
    routes: [
      GoRoute(path: splash, builder: (context, state) => const SplashView()),
      GoRoute(path: gallery, builder: (context, state) => const GalleryView()),
    ],
  );
}
