import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._(); // To avoid creating instances

  /* -- Light theme -------------------------------- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: tWhiteColor,
    backgroundColor: tSecondaryColor,
    side: BorderSide(color: tSecondaryColor),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  ));

  /* -- Dark theme -------------------------------- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: tSecondaryColor,
    backgroundColor: tWhiteColor,
    side: BorderSide(color: tWhiteColor),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  ));
}
