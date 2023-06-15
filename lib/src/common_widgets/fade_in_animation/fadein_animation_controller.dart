import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:my_first_app/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:my_first_app/src/features/authentication/screens/welcome/welcome_screen.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();
  RxBool animate = false.obs;
  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll(() => Welcome());
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
  }
}
