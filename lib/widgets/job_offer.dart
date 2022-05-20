import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobOffer extends StatelessWidget {
  const JobOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'My job offers',
        style: TextStyle(
            fontFamily: 'Matter', fontWeight: FontWeight.w600, fontSize: 18.sp),
      ),
       SizedBox(
        height: 10.h,
      ),
      Container(
          padding:  EdgeInsets.symmetric(horizontal: 5.w, vertical: 12.h),
          height: 120.h,
          decoration: BoxDecoration(
              color: const Color(0xFFF0F2F5),
              borderRadius: BorderRadius.circular(5.r)),
          child: Center(
              child: Row(
            children: [
              Expanded(child: blocks()),
              SizedBox(width: 10.w,),
              Expanded(flex: 3, child: description())
            ],
          )))
    ]);
  }

  SizedBox description() {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '''Job offer are shown here!
Keep your profile updated to stay
relevant for new opportunities.''',
            style: TextStyle(
                fontFamily: 'Matter',
                fontSize: 15.sp,
                height: 1.3,
                color: const Color(0xFF656565),
                fontWeight: FontWeight.w400),
          ),
          Row(
            children: [
              Text(
                'Go to my profile',
                style: TextStyle(
                    fontFamily: 'Matter',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.chevron_right_outlined,
                size: 18.sp,
              )
            ],
          )
        ],
      ),
    );
  }

  SizedBox blocks() {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          firstContainer(),
          SizedBox(height: 3.h),
          secondContainer(),
          SizedBox(height: 3.h),
          thirdContainer(),
        ],
      ),
    );
  }

  Container thirdContainer() {
    return Container(
      width: 60.w,
      height: 15.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFFCDCECE)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFE6E9EA), shape: BoxShape.circle),
              child: const Text('   '),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/big_line.png',
                  color: const Color(0xFFE6E9EA),
                  scale: 0.8,
                ),
                const SizedBox(
                  height: 3,
                ),
                Image.asset(
                  'assets/images/small_line.png',
                  color: const Color(0xFFE6E9EA),
                  scale: 0.8,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container secondContainer() {
    return Container(
      width: 60.w,
      height: 15.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFFA0A2A3)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/images/done.png',
              color: Colors.white,
              scale: 0.8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/big_line.png',
                  scale: 0.8,
                ),
                const SizedBox(
                  height: 3,
                ),
                Image.asset(
                  'assets/images/small_line.png',
                  scale: 0.8,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container firstContainer() {
    return Container(
      width: 60.w,
      height: 15.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFFA0A2A3)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/images/done.png',
              color: Colors.white,
              scale: 0.8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/big_line.png',
                  scale: 0.8,
                ),
                const SizedBox(
                  height: 3,
                ),
                Image.asset(
                  'assets/images/small_line.png',
                  scale: 0.8,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
