import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/constants.dart';

class CustomOutLineButton extends StatefulWidget {
  const CustomOutLineButton({Key? key}) : super(key: key);

  @override
  State<CustomOutLineButton> createState() => _CustomOutLineButtonState();
}

class _CustomOutLineButtonState extends State<CustomOutLineButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
        onPressed: () {},
        style: MyConstants.kOutLineButtonStyle,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 20, top: 4, bottom: 4),
          child: Image.asset(
            "assets/otp_screen_assets/true_caller.png",
            width: 150,
          ),
        ),
      ),
    );
  }
}
