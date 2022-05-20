import 'package:flutter/material.dart';


import '../models/date_model.dart';

class DateWidgetTop extends StatelessWidget {
  const DateWidgetTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      itemCount: dateModel.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return buildList()[index];
      },
    );
  }
}

List<DateModel> dateModel = [
  DateModel(
      today: 'TODAY',
      dayOfWeek: 'Mon',
      color: 0xFFEC4E27,
      month: 'Oct.',
      day: 18),
  DateModel(today: null, dayOfWeek: 'Tue', color: null, month: 'Oct.', day: 19),
  DateModel(
      today: null, dayOfWeek: 'Wed', color: 0xFF87C6F5, month: 'Oct.', day: 20),
  DateModel(
      today: null, dayOfWeek: 'Thu', color: 0xFFEC4E27, month: 'Oct.', day: 21),
  DateModel(today: null, dayOfWeek: 'Fri', color: null, month: 'Oct.', day: 22),
  DateModel(today: null, dayOfWeek: 'Sat', color: null, month: 'Oct.', day: 23),
  DateModel(today: null, dayOfWeek: 'Sun', color: null, month: 'Oct.', day: 24),
];

List<Widget> buildList() {
  return dateModel
      .map((DateModel e) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 4,),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
        
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFF111111)),
            child: Center(
              child: Padding(
                padding:const EdgeInsets.symmetric(vertical: 3),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        e.today == null
                            ? const SizedBox()
                            : Text(
                                e.today!,
                                style: const TextStyle(
                                    fontFamily: 'Matter',
                                    color: Color(0xFF9C9C9C),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                            const  SizedBox(width: 5,),
                        Text(
                          e.dayOfWeek,
                          style: const TextStyle(
                              fontFamily: 'Matter',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        e.color == null
                            ? const SizedBox()
                            : Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Color(e.color!)),
                                child: const Text('  '),
                              ),
                            const  SizedBox(width: 4,),
                        Text('${e.day}',
                                style: const TextStyle(
                                    fontFamily: 'Matter',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),),
                            const  SizedBox(width: 3,),
                        Text(e.month,
                                style: const TextStyle(
                                    fontFamily: 'Matter',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ))
      .toList();
}
