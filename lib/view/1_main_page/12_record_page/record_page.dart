import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:do_not_flow/constants/color.dart';
import 'package:do_not_flow/constants/lists.dart';

import 'record_carousel_slider.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({Key? key}) : super(key: key);

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  int _index = 0;
  bool _isOnStop = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RecordCarouselSlider(
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
              },
            ),
            SizedBox(height: 40.h,),
            _indexIndicator(),
          ],
        )
    );
  }

  _indexIndicator(){
    return Container(
      width: 240.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _indexIndicatorItem(0),
          _indexIndicatorItem(1),
          _indexIndicatorItem(2),
          _indexIndicatorItem(3),
          _indexIndicatorItem(4),
        ],
      )
    );
  }

  _indexIndicatorItem(int index){
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,

      width: index == _index ? 50.w : 34.w,
      height: index == _index ? 50.w : 34.w,
      padding: index == _index ? EdgeInsets.all(9.w) : EdgeInsets.all(6.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == _index ? colorPrimaryDark : colorWhite,
        boxShadow: [
          BoxShadow(
            color: colorBlack.withOpacity(0.16),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Image.asset(
        index == _index ? "assets/icons/${recordPageIndex[index]}_white.png" : "assets/icons/${recordPageIndex[index]}_blue.png",
      ),
    );
  }
}