import 'package:debindo_mks/color.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const HeaderTextBlack = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
    color: Colors.black,
  );

  static const HeaderTextWhite = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
    color: CustomColors.GreyBackground,
  );
  static const regulerText = const TextStyle(
      color: Colors.grey,
      fontSize: 9.0,
      fontWeight: FontWeight.w400
  );
  static const unselectedTabTextStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  );

  static const selectedTabTextStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    color: CustomColors.BlueDark,
  );
}