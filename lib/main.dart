import 'package:do_not_flow/view/1_main_page/10_navigation_page/navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp(
          title: '흐르지마',
          initialRoute: '/',
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => const NavigationPage(),
          },
        );
      },
    );
  }
}