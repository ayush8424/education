
import 'package:ddeexams/screens/batch_screen.dart/widgets/batch_details_card.dart';
import 'package:ddeexams/screens/batch_screen.dart/widgets/batch_screen_appbar.dart';
import 'package:ddeexams/screens/batch_screen.dart/widgets/batch_screen_bottom_bar.dart';
import 'package:ddeexams/screens/batch_screen.dart/widgets/subjects_details_card.dart';
import 'package:flutter/material.dart';


import '../../utils/colors.dart';
import '../home_screen/widgets/custom_home_screen_batch_card.dart';

class BatchScreen extends StatefulWidget {
  const BatchScreen({Key? key}) : super(key: key);

  @override
  State<BatchScreen> createState() => _BatchScreenState();
}

class _BatchScreenState extends State<BatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BatchScreenBottomBar(),
      backgroundColor: MyColors.kWhiteColor,
      appBar: BatchScreenAppBar.customAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(18),
          child: Column(children: [
            const BatchDetailsCard(),
            const SizedBox(
              height: 18,
            ),
            SubjectDetailsCard(),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Other Batches",
                style: TextStyle(
                    color: MyColors.kTextColor, fontWeight: FontWeight.bold,),
              ),
            ),
            SizedBox(height: 12,),
            CustomHomeScreenBatchCard(),
          ]),
        ),
      ),
    );
  }
}
