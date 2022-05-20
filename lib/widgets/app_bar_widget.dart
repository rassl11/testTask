import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'date_widget_app_bar.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    Key? key,
    required this.show,
    required this.scrollController,
  }) : super(key: key);

  final bool show;
  final ScrollController scrollController;

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget>
    with TickerProviderStateMixin {
//FOR OPTIMIZING ANIMATION
  bool swipeDownCheck = false;
  bool swipeUpCheck = false;
  late Animation<Offset> _animationSlide;

  late AnimationController _animationController;

  late Animation<double> _animationFade;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    _animationSlide =
        Tween<Offset>(begin: const Offset(0, -1), end: const Offset(0, 0))
            .animate(CurvedAnimation(
      curve: Curves.easeInSine,
      parent: _animationController,
    ));

    _animationFade = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      curve: Curves.fastOutSlowIn,
      parent: _animationController,
    ));
    widget.scrollController.addListener(() {
      if (swipeDownCheck == false) {
        if (widget.scrollController.offset > 100.h) {
          _animationController.forward();
          swipeDownCheck = true;
          swipeUpCheck = false;
        }
      } else if (swipeUpCheck == false) {
        if (widget.scrollController.offset < 100.h) {
          _animationController.reverse();
          swipeUpCheck = true;
          swipeDownCheck = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(20.h),
        child: Transform.translate(
          offset: const Offset(0, -6),
          child: SizedBox(
              height: 30.h,
              child: FadeTransition(
                opacity: _animationFade,
                child: SlideTransition(
                    position: _animationSlide, child: const DateWidgetTop()),
              )),
        ),
      ),
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.white.withOpacity(0.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [],
            ),
          ),
        ),
      ),
      centerTitle: false,
      elevation: 0,
      title: Text(
        'My Availability',
        style: TextStyle(
            fontSize: 19.sp,
            color: Colors.black,
            fontFamily: 'Matter',
            fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.white.withOpacity(0.1),
      primary: true,
      pinned: true,
    );
  }
}
