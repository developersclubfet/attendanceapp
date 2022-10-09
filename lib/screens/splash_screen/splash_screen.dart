import 'package:attendance_app/controller/splash_screen_controller/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text(
            'Attendance App',
            style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
