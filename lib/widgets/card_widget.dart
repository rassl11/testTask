import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testapp/models/card_model.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding:  EdgeInsets.symmetric(horizontal: 4.r),
      itemCount: cartModel.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return AspectRatio(
          aspectRatio: 1.69,
          child: Container(
              margin:  EdgeInsets.symmetric(horizontal: 8, vertical: 20.r),
              decoration: BoxDecoration(
                  color: const Color(0xFFF0F2F5),
                  borderRadius: BorderRadius.circular(5)),
              child: buildList()[index]),
        );
      },
    );
  }
}

List<CardModel> cartModel = [
  CardModel(
      description:
          'Complete your profile tooptimize your exposure in job searches.',
      colorOne: 0xFF87C6F5,
      colorTwo: 0xFFFFFFFF,
      continueButton: 'Complete profile'),
  CardModel(
      description:
          'Connect your profile tooptimize know aposure in job searches.',
      colorOne: 0xFF87C6F5,
      colorTwo: 0xFFFFFFFF,
      continueButton: 'Complete profile'),
];

List<Widget> buildList() {
  return cartModel
      .map(
        (CardModel e) => Padding(
          padding:  EdgeInsets.only(left: 16.r, right: 16.r,top: 16.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Text(e.description,
                    style:  TextStyle(
                      fontFamily: 'Matter',
                      fontSize: 15.sp,
                      letterSpacing: -0.2,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              Expanded(
                flex: 0,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 8.h,
                        child: const Text(' '),
                        color: Color(e.colorOne),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 8.h,
                        color: Color(e.colorTwo),
                        child:const Text(''),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(e.continueButton,
                      style:  TextStyle(
                        fontFamily: 'Matter',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      )),
                   Icon(
                    Icons.chevron_right_rounded,
                    size: 18.sp,
                  )
                ]),
              ),
            ],
          ),
        ),
      )
      .toList();
}
