import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/colors.dart';
import '../../../utils/widgets/custom_text_field.dart';
import 'custom_home_text_field.dart';

class CustomAppBar {
  static PreferredSize customAppBar() {
    return PreferredSize(
      preferredSize: Size(double.infinity, 100),
      child: AppBar(
        actions: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 8.0, top: 8, bottom: 8, left: 8),
                child: Image.asset(
                  "assets/home_screen_assets/coins.png",
                  height: 20,
                  width: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  "Refer & Earn",
                  style: TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                  
                  ),
              gradient: MyColors.kPrimaryGradient ,
              // image: DecorationImage(image:AssetImage(""))
              ),
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: 90,
                  child: Image.asset("assets/home_screen_assets/circle1.png")),
              Positioned(
                  top: -160,
                  right: 75,
                  child: Image.asset("assets/home_screen_assets/circle1.png"))
            ],
          ),
        ),

        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 200),
          child: Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    height: 45,
                    top: 24,
                    left: 50,
                    right: 50,
                    child: CustomHomeTextField()),
              ],
            ),
          ),
        ),
        titleSpacing: 10,
        leadingWidth: 80,
        // backgroundColor: MyColors.gredientColor,
        leading: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: CircleAvatar(
              backgroundColor: MyColors.kWhiteColor,
              radius: 15,
              child: FaIcon(FontAwesomeIcons.list , size: 18,color: MyColors.kColor1,)),
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text("DDEEXAMS"),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24))),
        centerTitle: true,
      ),
    );
  }
}
