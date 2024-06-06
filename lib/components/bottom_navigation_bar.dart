import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavigationBar extends StatefulWidget {
  int currentIndex;
  void Function(int index) onTap;
  MyBottomNavigationBar({super.key, required this.onTap , required this.currentIndex});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      child: Column(
        children: [
          BottomNavigationBar(
              backgroundColor: Colors.white,
              fixedColor: Colors.white,
              onTap: (value) => widget.onTap(value),
              currentIndex: 0,
              landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    label: "Home",
                    icon: SvgPicture.asset(
                    widget.currentIndex   == 0
                          ? "./assets/homeG.svg"
                          : "./assets/home.svg",
                    )),
                BottomNavigationBarItem(
                    label: "Home",
                    icon: SvgPicture.asset(
                         widget.currentIndex  == 1
                          ? "./assets/notificationG.svg"
                          : "./assets/notification.svg",
                    )),
                BottomNavigationBarItem(
                    label: "Home",
                    icon: SvgPicture.asset(
                         widget.currentIndex  == 2
                          ? "./assets/saveBookMarkG.svg"
                          : "./assets/saveBookMark.svg",
                    )),
                BottomNavigationBarItem(
                    label: "Home",
                    icon: SvgPicture.asset(
                         widget.currentIndex  == 3
                          ? "./assets/profileG.svg"
                          : "./assets/profile.svg",
                    )),
              ]),
        ],
      ),
    );
  }
}
