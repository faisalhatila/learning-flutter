import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:my_first_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:my_first_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:my_first_app/src/constants/colors.dart';
import 'package:my_first_app/src/constants/image_strings.dart';
import 'package:my_first_app/src/constants/sizes.dart';
import 'package:my_first_app/src/constants/text_strings.dart';
import 'package:my_first_app/src/common_widgets/fade_in_animation/fadein_animation_controller.dart';
import 'package:my_first_app/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          // TFadeInAnimation(splashController: splashController),
          TFadeInAnimation(
            width: 100.0,
            height: 100.0,
            durationInMs: 1600,
            animate: TAnimatePosition(
              topAfter: 0,
              topBefore: -30,
              leftBefore: -30,
              leftAfter: 0,
            ),
            child: const Image(image: AssetImage(tSplashTopIcon)),
          ),
          TFadeInAnimation(
            width: null,
            height: null,
            durationInMs: 2000,
            animate: TAnimatePosition(
              topBefore: 80,
              topAfter: 80,
              leftAfter: tDefaultSize,
              leftBefore: -80,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tAppName,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                // Text(
                //   tAppTagLine,
                //   style: Theme.of(context).textTheme.headlineMedium,
                // ),
              ],
            ),
          ),
          TFadeInAnimation(
            width: null,
            height: null,
            durationInMs: 2400,
            animate: TAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 500,
            ),
            child: const Image(image: AssetImage(tSplashImage)),
          ),
          TFadeInAnimation(
            width: null,
            height: null,
            durationInMs: 2400,
            animate: TAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 60,
              rightBefore: tDefaultSize,
              rightAfter: tDefaultSize,
            ),
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
          ),
          // Obx(
          //   () => AnimatedPositioned(
          //     duration: const Duration(milliseconds: 1600),
          //     top: 80,
          //     left: splashController.animate.value ? tDefaultSize : -80,
          //     child: AnimatedOpacity(
          //         duration: const Duration(milliseconds: 1600),
          //         opacity: splashController.animate.value ? 1 : 0,
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(
          //               tAppName,
          //               style: Theme.of(context).textTheme.headlineMedium,
          //             ),
          //             Text(
          //               tAppTagLine,
          //               style: Theme.of(context).textTheme.headlineMedium,
          //             ),
          //           ],
          //         )),
          //   ),
          // ),
          // Obx(
          //   () => AnimatedPositioned(
          //     duration: const Duration(milliseconds: 1600),
          //     bottom: splashController.animate.value ? 500 : 0,
          //     child: Image(
          //       image: AssetImage(tSplashImage),
          //     ),
          //   ),
          // ),
          // Obx(
          //   () => AnimatedPositioned(
          //     duration: const Duration(milliseconds: 2400),
          //     bottom: splashController.animate.value ? 60 : 0,
          //     right: tDefaultSize,
          //     child: AnimatedOpacity(
          //       duration: const Duration(milliseconds: 2000),
          //       opacity: splashController.animate.value ? 1 : 0,
          //       child: Container(
          //         width: tSplashContainerSize,
          //         height: tSplashContainerSize,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(100),
          //           color: tPrimaryColor,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
