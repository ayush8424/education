import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/colors.dart';
import '../../utils/widgets/custom_app_logo.dart';
import '../otp_screen/otp_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 6),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OtpScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.kBlackColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.55,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        CustomLogo(),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "India's Defence Exam Preperations",
                          style: TextStyle(
                              color: MyColors.kWhiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "All rights reserve @ 2022",
                          style: TextStyle(
                              fontSize: 11,
                              color: MyColors.kWhiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/splash_screen_assets/solider.png",
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
