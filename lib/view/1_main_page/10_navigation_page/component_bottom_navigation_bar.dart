import 'package:flutter/material.dart';

mainBottomNavigationBar({
  required int currentIndex,
  required void Function(int?) onTap,
}){
  return BottomNavigationBar(

    selectedFontSize: 10,

    type: BottomNavigationBarType.shifting,

    onTap: onTap,

    currentIndex: currentIndex,

    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        activeIcon: Icon(Icons.home),
        backgroundColor: Color(0xFF42C2FF),
        label: "홈",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.timer_outlined),
        activeIcon: Icon(Icons.timer),
        backgroundColor: Color(0xFF42C2FF),
        label: "기록",
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.map_outlined),
          activeIcon: Icon(Icons.map),
          backgroundColor: Color(0xFF42C2FF),
          label: "지도"
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          activeIcon: Icon(Icons.person),
          backgroundColor: Color(0xFF42C2FF),
          label: "마이 페이지"
      ),
    ]
  );
}