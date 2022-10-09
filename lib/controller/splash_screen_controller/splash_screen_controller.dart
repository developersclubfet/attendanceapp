import 'dart:async';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      Get.offNamed('/home');
    });
  }
}
