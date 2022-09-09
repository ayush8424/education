import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class CustomHomeScreenBatchCard extends StatefulWidget {
  const CustomHomeScreenBatchCard({Key? key}) : super(key: key);

  @override
  State<CustomHomeScreenBatchCard> createState() => _CustomHomeScreenBatchCardState();
}

class _CustomHomeScreenBatchCardState extends State<CustomHomeScreenBatchCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.36,
          width: MediaQuery.of(context).size.width * 1,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 30,
                    width: 100,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                        
                        backgroundColor:MyColors.kGreenColor),
                      onPressed: () {},
                      child: Row(
                        children: [
                          const Text(
                            "Explore",
                            style: TextStyle(color: MyColors.kWhiteColor),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Icon(Icons.arrow_circle_right_rounded , color: MyColors.kWhiteColor,size: 15,)
                          // Image.asset(
                          //   "assets/home_screen_assets/forward.png",
                          //   height: 10,
                          //   width: 10,
                          // ),
                        ],
                      ),
                    ),
                  ),
                )),
          ),
        ),
        Positioned(
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              width: MediaQuery.of(context).size.width * 1,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22)),
                child: Column(children: [
                  Image.asset("assets/home_screen_assets/cadet.png" , fit: BoxFit.fill,width: double.infinity,height: MediaQuery.of(context).size.height*0.21,),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Shuraya 60 days SSB course",
                    style: TextStyle(
                        color: MyColors.kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ]),
              )),
        ),
      ],
    );
  }
}
