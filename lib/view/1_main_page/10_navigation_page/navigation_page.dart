import 'package:flutter/material.dart';

import 'component_tab_bar_view.dart';
import 'component_bottom_navigation_bar.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage>
    with SingleTickerProviderStateMixin{
  int navigationBarIndex = 0;
  late TabController tabBarViewController;

  @override
  void initState() {
    super.initState();

    tabBarViewController = TabController(length: 4, vsync: this);
    tabBarViewController.addListener(_onNavigationTap);
  }

  void _onNavigationTap(){
    setState(() {
      navigationBarIndex = tabBarViewController.index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainTabBarView(tabBarViewController: tabBarViewController),
      bottomNavigationBar: mainBottomNavigationBar(
        onTap: (index){
          setState((){
            tabBarViewController.animateTo(index!);
          });
        },
        currentIndex: navigationBarIndex,
      ),
    );
  }


}