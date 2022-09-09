import 'package:flutter/material.dart';

import 'colors.dart';

class MyConstants {
  static ButtonStyle kOutLineButtonStyle = OutlinedButton.styleFrom(
      side: const BorderSide(
        width: 0.7,
        color: MyColors.kBlackColor,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)));
}
