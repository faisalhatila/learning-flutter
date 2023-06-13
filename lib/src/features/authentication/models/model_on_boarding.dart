import 'dart:ui';

class OnBoardingModel {
  final String image;
  final String networkImage;
  final String title;
  final String subtitle;
  final String counterText;
  final Color bgColor;
  final bool isNetworkImage;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.counterText,
    required this.bgColor,
    required this.isNetworkImage,
    required this.networkImage,
  });
}
