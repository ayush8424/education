
import 'package:ddeexams/screens/batch_screen.dart/batch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/colors.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap:((value) {
        print(value);
        if(value==1){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return BatchScreen();
          }));
        }
      }),
        selectedFontSize: 12,
        showSelectedLabels: false,
        selectedIconTheme: IconThemeData(color: MyColors.kColor1),
        items: [
          _item(FontAwesomeIcons.house, "Home"),
          _item(Icons.menu_book_sharp,"Batches"),
          _item(FontAwesomeIcons.pencil, "Exam"),
          _item(FontAwesomeIcons.question, "Help")
        ]);
  }

  BottomNavigationBarItem _item(IconData icon, String lbl) {
    return BottomNavigationBarItem(
      icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        FaIcon(icon,color: MyColors.kTextColor,size: 18,),
          SizedBox(
            height: 5,
          ),
          Text(
            lbl,
            style: TextStyle(
              color: MyColors.kTextColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      label: "",
    );
  }
}
