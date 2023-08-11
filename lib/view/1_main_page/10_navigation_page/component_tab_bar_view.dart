import 'package:flutter/material.dart';

import 'package:do_not_flow/view/1_main_page/11_home_page/home_page.dart';
import 'package:do_not_flow/view/1_main_page/12_record_page/record_page.dart';
import 'package:do_not_flow/view/1_main_page/13_map_page/map_page.dart';
import 'package:do_not_flow/view/1_main_page/14_my_page/my_page.dart';

mainTabBarView({
  required TabController tabBarViewController,
}) => TabBarView(
  controller: tabBarViewController,
  children: [
    HomePage(),
    RecordPage(),
    MapPage(),
    MyPage(),
  ],
);
