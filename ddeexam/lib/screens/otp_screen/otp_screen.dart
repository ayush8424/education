
import 'package:ddeexams/screens/otp_screen/widgets/custom_get_otp_button.dart';
import 'package:ddeexams/screens/otp_screen/widgets/custom_outline_button.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';
import '../../utils/widgets/custom_app_logo.dart';
import '../../utils/widgets/custom_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(
              top: 50,
              right: 50,
              left: 50,
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const CustomLogo(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Login with",
                style: TextStyle(
                    color: MyColors.kBlackColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 18,
              ),
              const CustomOutLineButton(),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "OR",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                child: CustomTextField(
                  hintText: "Mobile Number",
                  prefix: "assets/otp_screen_assets/mobile.png",
                  isFill: false,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomGetOTPButton(),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "India Defense Exam Preparations",
                style: TextStyle(
                  color: MyColors.kBlackColor,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              Image.asset(
                "assets/splash_screen_assets/solider.png",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
