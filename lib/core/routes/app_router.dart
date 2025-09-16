import 'package:flutter/material.dart';
import '../../features/splash/splash_view.dart';
import '../../features/home/home_view.dart';
import '../../features/movie_detail/movie_detail_view.dart';
import '../../features/search/search_view.dart';
import '../../features/favorites/favorites_view.dart';
import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case AppRoutes.movieDetail:
        return MaterialPageRoute(builder: (_) => const MovieDetailView());
      case AppRoutes.search:
        return MaterialPageRoute(builder: (_) => const SearchView());
      case AppRoutes.favorites:
        return MaterialPageRoute(builder: (_) => const FavoritesView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
