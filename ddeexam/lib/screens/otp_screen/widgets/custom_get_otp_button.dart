
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/colors.dart';
import '../../home_screen/home_screen.dart';

class CustomGetOTPButton extends StatefulWidget {
  const CustomGetOTPButton({Key? key}) : super(key: key);

  @override
  State<CustomGetOTPButton> createState() => _CustomGetOTPButtonState();
}

class _CustomGetOTPButtonState extends State<CustomGetOTPButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            side:  const BorderSide(
              width: 0.7,
              color: MyColors.kBlackColor,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HomeScreen();
          }));
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Get OTP",
            style: TextStyle(
                color: MyColors.kBlackColor,
                fontWeight: FontWeight.bold,
                fontSize: 13),
          ),
        ),
      ),
    );
  }
}
