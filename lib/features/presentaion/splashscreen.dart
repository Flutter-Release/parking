import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/utils/constant.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay navigation to the main screen
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the main screen
      Get.offAllNamed(Routes.mainscreen.name);
      // Get.offAndToNamed(Routes.mainscreen.name);
      // Navigator.pushNamed(context, Routes.mainscreen.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.flutter_dash,
              size: 100,
              color: Colors.white,
            ),
            SizedBox(height: 20),
            Text(
              'Splash Screen',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}