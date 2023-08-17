import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:do_not_flow/constants/lists.dart';
import 'package:do_not_flow/constants/color.dart';

class RecordCarouselSlider extends StatefulWidget {
  final void Function(double?)? onScrolled;

  const RecordCarouselSlider({
    Key? key,
    required this.onScrolled,
  }) : super(key: key);

  @override
  State<RecordCarouselSlider> createState() => _RecordCarouselSliderState();
}

class _RecordCarouselSliderState extends State<RecordCarouselSlider> {
  bool _isOnStop = true;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: _isOnStop ? _carouselSliderItemsOnStop : _carouselSliderItemsOnScroll(),
      options: CarouselOptions(
        enableInfiniteScroll: false,
        viewportFraction: _isOnStop ? 1 : 231.w / 390.w,
        initialPage: 0,
        enlargeCenterPage: true,
        height: _isOnStop ? 522.h : 231.w,
        onScrolled: (index){
          if(_isOnStop){
            setState(() {
              _isOnStop = false;
            });
          }
          if(!_isOnStop && index == index?.round()){
            setState(() {
              _isOnStop = true;
            });
          }
          widget.onScrolled;
        },
        onPageChanged: (index, reason) {},
      ),
    );
  }

  final List<Widget> _carouselSliderItemsOnStop = <Widget>[
    _carouselSliderItemOnStop(),
    _carouselSliderItemOnStop(),
    _carouselSliderItemOnStop(),
    _carouselSliderItemOnStop(),
    _carouselSliderItemOnStop(),
  ];

  _carouselSliderItemsOnScroll(){
    return <Widget>[
      _carouselSliderItemOnScroll(0),
      _carouselSliderItemOnScroll(1),
      _carouselSliderItemOnScroll(2),
      _carouselSliderItemOnScroll(3),
      _carouselSliderItemOnScroll(4),
    ];
  }

  _carouselSliderItemOnScroll(int index){
    return Container(
      width: 231.w,
      padding: EdgeInsets.all(40.w),
      margin: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: colorWhite,
        boxShadow: [
          BoxShadow(
            color: colorBlack.withOpacity(0.16),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Container(
          child: Image.asset(
            "assets/icons/${recordPageIndex[index]}_blue.png",
            width: 150.w,
          ),
        ),
      ),
    );
  }
}

class _carouselSliderItemOnStop extends StatelessWidget {
  const _carouselSliderItemOnStop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 306.w,
      height: 522.h,
      margin: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: colorWhite,
        boxShadow: [
          BoxShadow(
            color: colorBlack.withOpacity(0.16),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
