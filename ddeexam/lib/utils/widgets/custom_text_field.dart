import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../colors.dart';

class CustomTextField extends StatelessWidget {
 final String hintText;
  final String prefix;
  final bool isFill;

  const CustomTextField({key, required this.hintText, required this.prefix, required this.isFill});
   

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(prefix ,height: 10, ),
        ),
        hintStyle: const TextStyle(color: MyColors.kGreyColor,fontSize: 12,fontWeight: FontWeight.bold),
          isDense: true,
          fillColor: MyColors.kWhiteColor,
          filled: isFill,
          contentPadding: const EdgeInsets.all(12),
          focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: MyColors.kRedColor, width: 0.7),
              borderRadius: BorderRadius.circular(12)),
          errorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: MyColors.kRedColor, width: 0.7),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: MyColors.kBlackColor, width: 0.7),
              borderRadius: BorderRadius.circular(12)),
          border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: MyColors.kBlackColor, width: 0.7),
              borderRadius: BorderRadius.circular(12))),
    );
  }
}
