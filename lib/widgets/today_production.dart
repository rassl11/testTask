import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayProduction extends StatelessWidget {
  const TodayProduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        color: const Color(0xFFF0F2F5),
        child: Stack(children:  [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '''All of your today\'s production will 
be displayed here.''',
                  style: TextStyle(
                      fontFamily: 'Matter',
                      color: const Color(0xFF656565),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            child: Image.asset('assets/images/lenta.png')),
          Positioned(
            left: 17,
            top: 20,
            child: Image.asset('assets/images/cadr.png')),
          Positioned(
            left: 30,
            top: 6,
            child: Image.asset('assets/images/play.png')),
        ]
        )
        );
  }
}
