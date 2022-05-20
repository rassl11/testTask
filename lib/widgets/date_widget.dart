import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DateWidget extends StatelessWidget {
  const DateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.r),
            child: folgaKalaudPistachio())
          ]);
    
  }
}



Wrap folgaKalaudPistachio() {
    return Wrap(
      spacing: 10.w,
      children: [
        Container(
          decoration: BoxDecoration(
            color:const Color(0xFF111111),
            borderRadius: BorderRadius.circular(5)
          ),
        
          child: _checkBox(
          today: 'TODAY',
          dayOfWeek: 'Mon',
          day: '18',
          month: 'Oct',
          color: 0xFFEC4E27
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Container(
            decoration: BoxDecoration(
              color:const Color(0xFF111111),
              borderRadius: BorderRadius.circular(5)
            ),
              
            child: _checkBox(
            today: null,
            dayOfWeek: 'Tue',
            day: '19',
            month: 'Oct',
            color: 0xFF87C6F5
            ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                decoration: BoxDecoration(
              color:const Color(0xFF111111),
              borderRadius: BorderRadius.circular(5)
            ),
              
              child: _checkBox(
        today: null,
        dayOfWeek: 'Wed',
        day: '20',
        month: 'Oct',
        color: null
        ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 5),
            child: Container(
                decoration: BoxDecoration(
              color:const Color(0xFF111111),
              borderRadius: BorderRadius.circular(5)
            ),
              
              child: _checkBox(
                    today: null,
                    dayOfWeek: 'Thu',
                    day: '21',
                    month: 'Oct',
                    color: 0xFFEC4E27
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                decoration: BoxDecoration(
              color:const Color(0xFF111111),
              borderRadius: BorderRadius.circular(5)
            ),
      
              child: _checkBox(
        today: null,
        dayOfWeek: 'Fri',
        day: '22',
        month: 'Oct',
        color: null
        ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                decoration: BoxDecoration(
              color:const Color(0xFF111111),
              borderRadius: BorderRadius.circular(5)
            ),
              
              child: _checkBox(
        today: null,
        dayOfWeek: 'Sat',
        day: '23',
        month: 'Oct',
        color: null
        ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                decoration: BoxDecoration(
              color:const Color(0xFF111111),
              borderRadius: BorderRadius.circular(5)
            ),
              
              child: _checkBox(
        today: null,
        dayOfWeek: 'Sun',
        day: '24',
        month: 'Oct',
        color: null
        ),
            ),
          ),
      ],
    );
  }




Widget _checkBox({
    required String? today,
      required String dayOfWeek,
      required String month,
      required String day,
      required int? color
}) {
  return Padding(
          padding:  EdgeInsets.only(left: 10.r,top: 15.r,right: 10.r,bottom: 9.r),
          child: SizedBox(
            width: 45.w,
            child: Column(
        
              children: [
                today != null
                    ? Text(today,
                        style:  TextStyle(
                            fontFamily: 'Matter',
                            fontSize: 11.sp,
                            letterSpacing: -0.2,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF9C9C9C)))
                    : const SizedBox(),
                      SizedBox(height: 2.h,),
                Text(dayOfWeek,
                    style:  TextStyle(
                        fontFamily: 'Matter',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                        SizedBox(height: 2.h,),
                Text(month,
                    style:  TextStyle(
                        fontFamily: 'Matter',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                Text(day,
                    style:  TextStyle(
                        fontFamily: 'Matter',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
                color != null
                    ? Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(color)),
                        child:  Padding(
                            padding: EdgeInsets.all(4.5.r), child: const Text('')),
                      )
                    :  SizedBox(height: 5.h,)
              ],
            ),
          ),
        );
}
