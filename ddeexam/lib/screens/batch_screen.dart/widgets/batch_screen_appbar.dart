import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/colors.dart';
import '../../../utils/widgets/custom_text_field.dart';

class BatchScreenAppBar {
  static PreferredSize customAppBar() {
    return PreferredSize(
      preferredSize: Size(double.infinity, 120),
      child: AppBar(
        actions: [
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                      right: 18.0, top: 12, bottom: 8, left: 8),
                  child: Container(
                    height: 25,
                    width: 25,
                    margin: EdgeInsets.only(top: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: MyColors.kWhiteColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: FaIcon(
                      FontAwesomeIcons.share,
                      color: MyColors.kColor1,
                      size: 14,
                    ),
                  )),
            ],
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
            gradient: MyColors.kPrimaryGradient,
            // image: DecorationImage(image:AssetImage(""))
          ),
        ),

        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: Padding(
            padding: const EdgeInsets.only(bottom:12,left:20.0,),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Course Details",
                      style:
                          TextStyle(fontSize: 18, color: MyColors.kWhiteColor),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Shaurya 60 Days CDS Crash Course",
                      style: TextStyle(
                          fontSize: 16,
                          color: MyColors.kWhiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
          ),
        ),
        titleSpacing: 10,
        leadingWidth: 80,
        // backgroundColor: MyColors.gredientColor,
        leading: Padding(
          padding: const EdgeInsets.all(14.0),
          child: FaIcon(
            Icons.arrow_back_sharp,
            size: 28,
            color: MyColors.kWhiteColor,
          ),
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
