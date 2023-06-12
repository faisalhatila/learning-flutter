import 'package:flutter/material.dart';
import 'package:my_first_app/src/constants/colors.dart';
import 'package:my_first_app/src/constants/image_strings.dart';
import 'package:my_first_app/src/constants/sizes.dart';
import 'package:my_first_app/src/constants/text_strings.dart';
import 'package:my_first_app/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: animate ? 0 : -30,
            left: animate ? 0 : -30,
            width: 100.0,
            height: 100.0,
            child: Image(
              image: AssetImage(tSplashTopIcon),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: 80,
            left: animate ? tDefaultSize : -80,
            child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: animate ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      tAppTagLine,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                )),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            bottom: animate ? 500 : 0,
            child: Image(
              image: AssetImage(tSplashImage),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            bottom: animate ? 60 : 0,
            right: tDefaultSize,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              opacity: animate ? 1 : 0,
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => {animate = true});
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Welcome()));
  }
}
