import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/colors.dart';

class SubjectDetailsCard extends StatelessWidget {
  SubjectDetailsCard({Key? key}) : super(key: key);
  List listOfSubject = [
    "English",
    "Maths",
    "Urdu",
    "Biology",
    "Chemistry",
    "C.S",
    "Physics",
    "G.K"
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5, // length of tabs
        initialIndex: 2,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const TabBar(
                isScrollable: true,
                labelColor: MyColors.kTextColor,
                indicatorColor: MyColors.kGreenColor,
                unselectedLabelColor: Color.fromARGB(255, 160, 156, 156),
                tabs: [
                  Tab(text: 'Overview'),
                  Tab(text: 'Trail Classes'),
                  Tab(text: 'Carriculum'),
                  Tab(text: 'Instructor'),
                  Tab(text: 'Reviews'),
                ],
              ),
              Container(
                  height: MediaQuery.of(context).size.height *
                      0.56, //height of TabBarView
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: MyColors.kBorderColor,
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: TabBarView(children: <Widget>[
                    _carriculumWidget(context),
                    _carriculumWidget(context),
                    _carriculumWidget(context),
                    _carriculumWidget(context),
                    _carriculumWidget(context),
                  ]))
            ]));
  }

  Container _carriculumWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 22),
      height: MediaQuery.of(context).size.height * 0.55, //height of TabBarView

      decoration: BoxDecoration(
          // color: MyColors.kRedColor,

          border: Border.all(width: 0.5, color: MyColors.kBorderColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                itemCount: listOfSubject.length,
                itemBuilder: (context, position) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      position == 0
                          ? _paperName('Paper-1 NDA Mathematics')
                          : Opacity(opacity: 0),
                      position == 0
                          ? _subjectName("Mathematics", position)
                          : Opacity(opacity: 0),
                      position == 0
                          ? _paperName("Paper-1 NDA General")
                          : Opacity(opacity: 0),
                      _subjectName(listOfSubject[position], position),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }

  Container _subjectName(String subject, int index) {
    return Container(
      padding: EdgeInsets.all(6),
      color:
          index % 2 == 0 ? MyColors.kContainerGreyColor : MyColors.kWhiteColor,
      width: double.infinity,
      child: Row(
        children: [
          Icon(
            Icons.book_outlined,
            color: MyColors.kGreenColor,
            size: 19,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "Subject: $subject",
            style: TextStyle(
                color: MyColors.kGreenColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Padding _paperName(String paperName) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, left: 18, bottom: 8),
      child: Text(paperName,
          style: TextStyle(
              fontSize: 14,
              color: MyColors.kTextColor,
              fontWeight: FontWeight.bold)),
    );
  }
}
