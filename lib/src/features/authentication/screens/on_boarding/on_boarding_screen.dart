import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:my_first_app/src/constants/colors.dart';
import 'package:my_first_app/src/constants/image_strings.dart';
import 'package:my_first_app/src/constants/sizes.dart';
import 'package:my_first_app/src/constants/text_strings.dart';
import 'package:my_first_app/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:my_first_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final obController = OnBoardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangedCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () => obController.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20.0),
                onPrimary: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: tDarkColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 20,
              child: AnimatedSmoothIndicator(
                count: 3,
                activeIndex: obController.currentPage.value,
                effect: const WormEffect(
                    activeDotColor: Color(0xff272727), dotHeight: 5.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
