import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodaysProductionSecond extends StatelessWidget {
  const TodaysProductionSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.only(right: 17.r),
          decoration: BoxDecoration(
              color: const Color(0xFFF0F2F5),
              borderRadius: BorderRadius.circular(5.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.r),
                    bottomLeft: Radius.circular(5.r)),
                child: Image.asset(
                  'assets/images/video.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Production Name That is Long',
                    style: TextStyle(
                        fontFamily: 'Matter',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'Sweden  Jan 14,2022 - Feb 23,2023',
                    style: TextStyle(
                        fontFamily: 'Matter',
                        fontSize: 11.sp,
                        letterSpacing: -0.2,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF656565)),
                  )
                ],
              ),
              Icon(
                Icons.chevron_right_sharp,
                size: 22.sp,
              )
            ],
          ),
        ),
        SizedBox(
          height: 9.h,
        ),
        Container(
          padding: EdgeInsets.only(right: 17.r),
          decoration: BoxDecoration(
              color: const Color(0xFFF0F2F5),
              borderRadius: BorderRadius.circular(5.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.r),
                    bottomLeft: Radius.circular(5.r)),
                child: Image.asset(
                  'assets/images/dj.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                width: 18.w,
              ),
              Expanded(
                flex: 4,
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What has bee seen very very long term asd sad',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: 'Matter',
                            fontSize: 14.sp,
                            letterSpacing: -0.2,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        'Sweden  Jan 14,2022 - Feb 23,2023',
                        style: TextStyle(
                            fontFamily: 'Matter',
                            fontSize: 11.sp,
                            letterSpacing: -0.2,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF656565)),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: Icon(
                  Icons.chevron_right_sharp,
                  size: 22.sp,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
