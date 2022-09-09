

import 'package:ddeexams/screens/home_screen/widgets/bottom_bar.dart';
import 'package:ddeexams/screens/home_screen/widgets/custom_app_bar.dart';
import 'package:ddeexams/screens/home_screen/widgets/custom_home_screen_batch_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/colors.dart';
import '../../utils/widgets/custom_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List items = ["All", "NDA", "CDS", "ISSB"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.customAppBar(),
        bottomNavigationBar: CustomBottomBar(),
        body: Container(
          margin: EdgeInsets.all(18),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, position) {
                return Column(
                  children: [
                    position != 0
                        ? Opacity(opacity: 0)
                        : Column(
                            children: [
                              SizedBox(height: 20),
                              Image.asset(
                                  "assets/home_screen_assets/banner.png"),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                      height: 28,
                                      width: 85,
                                      child: _filterButton()),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    height: 20,
                                    color: MyColors.kBlackColor,
                                    width: 1,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 28,
                                    width: MediaQuery.of(context).size.width *
                                        0.58,
                                    child: ListView(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        customButton(
                                            "All",
                                            index == 0
                                                ? MyColors.kWhiteColor
                                                : MyColors.kTextColor,
                                            index == 0
                                                ? MyColors.kGreenColor
                                                : MyColors.kWhiteColor, () {
                                          index = 0;
                                          setState(() {});
                                        }),
                                        customButton(
                                            "NDA",
                                            index == 1
                                                ? MyColors.kWhiteColor
                                                : MyColors.kTextColor,
                                            index == 1
                                                ? MyColors.kGreenColor
                                                : MyColors.kWhiteColor, () {
                                          index = 1;
                                          setState(() {});
                                        }),
                                        customButton(
                                            "CDS",
                                            index == 2
                                                ? MyColors.kWhiteColor
                                                : MyColors.kTextColor,
                                            index == 2
                                                ? MyColors.kGreenColor
                                                : MyColors.kWhiteColor, () {
                                          index = 2;
                                          setState(() {});
                                        }),
                                        customButton(
                                            "SSB",
                                            index == 3
                                                ? MyColors.kWhiteColor
                                                : MyColors.kTextColor,
                                            index == 3
                                                ? MyColors.kGreenColor
                                                : MyColors.kWhiteColor, () {
                                          index = 3;
                                          setState(() {});
                                        })
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                ],
                              ),
                            ],
                          ),
                    const SizedBox(
                      height: 18,
                    ),
                    const CustomHomeScreenBatchCard(),
                  ],
                );
              }),
        ),
      ),
    );
  }

  PopupMenuButton<dynamic> _filterButton() {
    return PopupMenuButton(
      offset: Offset(-10, 0),
      // constraints: BoxConstraints(minWidth: 20, maxWidth: 100),
      padding: EdgeInsets.all(0),
      // position: PopupMenuPosition.under,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 0.7, color: MyColors.kBlackColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.filter,
              color: MyColors.kBlackColor,
              size: 16,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              "Filter",
              style: TextStyle(color: MyColors.kTextColor),
            )
          ],
        ),
      ),
      itemBuilder: (context) {
        return [
          PopupMenuItem(child: Text("Option 1")),
          PopupMenuItem(child: Text("Option 2")),
          PopupMenuItem(child: Text("Option 3"))
        ];
      },
    );
  }

  Padding customButton(String text, Color textColor, Color backGroundColor,
      VoidCallback onClick) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: backGroundColor,
            side: const BorderSide(
              width: 0.7,
              color: MyColors.kBlackColor,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: onClick,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
