import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking/features/presentaion/splashscreen.dart';
import 'core/utils/ThemeController.dart';
import 'core/utils/constant.dart';

class ParkingEntry extends StatelessWidget {
  const ParkingEntry({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Initialize the ThemeController

    final ThemeController themeController = Get.put(ThemeController());
    return Obx(() => GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeController.themeMode.value, // Bind themeMode to GetX state
      home: SplashScreen(),
      getPages: routePage,
      navigatorKey: constants.navigatorKey,
      initialRoute: Routes.splashscreen.name,
    ));
  }
}
