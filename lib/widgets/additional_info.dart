import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        myNetwork(),
        quickHire(),
        myCv(),
      ],
    );
  }

  Container myCv() {
    return Container(
        width: 0.3.sw,
        height: 0.19.sh,
      decoration:  BoxDecoration(
        borderRadius:BorderRadius.circular(5) ,
          gradient:const LinearGradient(
              colors: [Color(0xFF6B34C3), Color(0xFF8E5EDB)])),
      padding:  EdgeInsets.symmetric(horizontal: 10.r, vertical: 10.r),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/my_cv.png',
            scale: 0.9,
            ),
              const  SizedBox(height: 14,),
          Text(
            'My CV',
            style: TextStyle(
                fontFamily: 'Matter',
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
        const  SizedBox(height: 5,),
          Text('Keep your CV updated to get relevant offers',
          style: TextStyle(
            fontFamily: 'Matter',
            fontSize: 11.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white
          ),
          )
          ],
        ),
      ),
    );
  }

  Container quickHire() {
    return  Container(
      width: 0.3.sw,
      height: 0.19.sh,
          decoration:  BoxDecoration(
            borderRadius:BorderRadius.circular(5) ,
              gradient:const LinearGradient(
                  colors: [Color(0xFFEC4E27), Color(0xFFF47E61)])),
          padding:EdgeInsets.symmetric(horizontal: 10.r, vertical: 20.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/try.png',
              height: 35,),
                const  SizedBox(height: 15,),
            Text(
              'Quick hire',
              style: TextStyle(
                  fontFamily: 'Matter',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          const  SizedBox(height: 5,),
            Text('Hire someone quickly today',
            style: TextStyle(
              fontFamily: 'Matter',
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white
            ),
            )
            ],
          ),
        
      );
  }

  Container myNetwork() {
    return Container(
        width: 0.3.sw,
        height: 0.19.sh,
      decoration:  BoxDecoration(
        borderRadius:BorderRadius.circular(5) ,
          gradient:const LinearGradient(
              colors: [Color(0xFF3465C3), Color(0xFF5785DE)])),
      padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 10.r),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/my_network.png',
            height: 35,),
              const  SizedBox(height: 15,),
        const  Text(
            'My network',
            style: TextStyle(
                fontFamily: 'Matter',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
        const  SizedBox(height: 5,),
        const  Text('Connect and grow your network',
          style: TextStyle(
            fontFamily: 'Matter',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.white
          ),
          )
          ],
        ),
      ),
    );
  }
}
