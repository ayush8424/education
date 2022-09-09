import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/colors.dart';

class BatchScreenBottomBar extends StatelessWidget {
  const BatchScreenBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color.fromARGB(255, 230, 223, 223),
              blurRadius: 5,
              spreadRadius: 5),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        child: BottomNavigationBar(
            elevation: 30,
            selectedFontSize: 12,
            showSelectedLabels: false,
            selectedIconTheme: IconThemeData(color: MyColors.kColor1),
            items: [
              BottomNavigationBarItem(
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Price ",
                              style: TextStyle(
                                color: MyColors.kGreyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Opacity(
                              opacity: 0,
                              child: Text(
                                "Price",
                                style: TextStyle(
                                  color: MyColors.kGreyColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "2999/-",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: MyColors.kGreyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              " 1999/-",
                              style: TextStyle(
                                color: MyColors.kTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: MyColors.kGreenColor,
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {},
                    child: Text(
                      "Buy now",
                      style: TextStyle(color: MyColors.kWhiteColor),
                    ),
                  ),
                ),
                label: "",
              )
            ]),
      ),
    );
  }
}
