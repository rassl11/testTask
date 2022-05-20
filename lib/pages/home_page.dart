
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/additional_info.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/card_widget.dart';
import '../widgets/date_widget.dart';
import '../widgets/job_offer.dart';
import '../widgets/starred_posts.dart';
import '../widgets/todays_production_second.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _show = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      checkPosition();
    });
    super.initState();
  }

  void checkPosition() {
    if (_scrollController.offset > 144) {
      if (_show == false) {
        _show = true;
      }

      setState(() {});
    } else {
      if (_show == true) {
        _show = false;
      }

      setState(() {});
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            shrinkWrap: true,
            controller: _scrollController,
            slivers: [
          AppBarWidget(
            show: _show,
            scrollController: _scrollController,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    SizedBox(height: 100.h, child:const DateWidget()),
                    SizedBox(
                      height: 150.h,
                      child: const CardWidget(),
                    ),
                  
                    const TodayProduction(),
                
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 11.w),
                      child: SizedBox(height: 150.h, child: const AdditionalInfo()),
                    ),
                    SizedBox(
                        height: 10.h,
                    ),
              
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 11.w),
                        child:const JobOffer()),
                    SizedBox(
                        height: 20.h,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 11.w),
                        child:const StarredPosts()),
                    const SizedBox(
                      height: 60,
                    )
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}

class TodayProduction extends StatelessWidget {
  const TodayProduction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 11.r),
      child: SizedBox(
        height: 150.h,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                'Today\'s productions',
                style: TextStyle(
                    fontFamily: 'Matter',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10.h,
              ),
            const  TodaysProductionSecond(),
            ]),
      ),
    );
  }
}

