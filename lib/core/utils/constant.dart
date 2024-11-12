import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../features/presentaion/mainscreen.dart';
import '../../features/presentaion/splashscreen.dart';

// Enum for route names
enum Routes {
  splashscreen,
  mainscreen,
  details,
}

extension RoutesExtension on Routes {
  // Convert enum to string (route name)
  String get name {
    switch (this) {
      case Routes.splashscreen:
        return '/splashscreen';
      case Routes.mainscreen:
        return '/homescreen';
      case Routes.details:
        return '/details';
    }
  }
}

List<GetPage<dynamic>> routePage = [
  GetPage(
    name: Routes.splashscreen.name,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: Routes.mainscreen.name,
    page: () => const MainScreen(),
  ),
];

final ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);

final ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


class constants {

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

}




