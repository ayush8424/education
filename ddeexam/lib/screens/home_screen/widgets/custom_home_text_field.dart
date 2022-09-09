import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/colors.dart';

class CustomHomeTextField extends StatelessWidget {
  const CustomHomeTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: Icon(Icons.search,color: MyColors.kTextColor,size: 20,),
          hintStyle: const TextStyle(
              color: MyColors.kGreyColor,
              fontSize: 12,
              fontWeight: FontWeight.bold),
          isDense: true,
          fillColor: MyColors.kWhiteColor,
          filled: true,
          contentPadding: const EdgeInsets.all(22),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.kRedColor, width: 0.7),
              borderRadius: BorderRadius.circular(22)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.kRedColor, width: 0.7),
              borderRadius: BorderRadius.circular(22)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.kBlackColor, width: 0.7),
              borderRadius: BorderRadius.circular(22)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.kBlackColor, width: 0.7),
              borderRadius: BorderRadius.circular(22))),
    );
  }
}
