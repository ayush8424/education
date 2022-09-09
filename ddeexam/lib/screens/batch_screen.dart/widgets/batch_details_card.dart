import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/colors.dart';

class BatchDetailsCard extends StatelessWidget {
  const BatchDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "This Batch Includes",
          style: TextStyle(color: MyColors.kTextColor),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_container("18 Days","Validaty" , false),
        _container("320+","Models",false),
        _container("120","PDF",false),
        _container("3000+","Students",true),],)
      ],
    );
  }

   _container(String text1 , String text2 , bool isLastContainer) {
    return Expanded(
      child: Container(
        
        alignment: Alignment.center,
          margin: EdgeInsets.only(top:18 , bottom: 18),
          // padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
              border: Border(
                  right:isLastContainer?BorderSide.none: BorderSide(
                      width: 1, color: Color.fromARGB(255, 219, 222, 235)))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text1,
                style: TextStyle(
                  color: MyColors.kTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
              text2,
                style: TextStyle(
                  color: MyColors.kTextColor,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
