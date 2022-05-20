import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StarredPosts extends StatelessWidget {
  const StarredPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Starred posts',
        style: TextStyle(
            fontFamily: 'Matter', fontWeight: FontWeight.w600, fontSize: 18.sp),
      ),
      SizedBox(
        height: 10.h,
      ),
      Container(
          decoration: BoxDecoration(
              color: const Color(0xFFF0F2F5),
              borderRadius: BorderRadius.circular(5.r)),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 18.h),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              star(),
              blocks(),
            ],
          )))
    ]);
  }

  SizedBox star() {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/stars.png',
            scale: 0.9.sp,
          )
        ],
      ),
    );
  }

  SizedBox blocks() {
    return SizedBox(
      child: Text(
        '''Posts that are extra relevant to you 
can be marked with a star and will 
be shown here for easy access.''',
        style: TextStyle(
            fontFamily: 'Matter',
            fontSize: 15.sp,
            color: const Color(0xFF656565),
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
