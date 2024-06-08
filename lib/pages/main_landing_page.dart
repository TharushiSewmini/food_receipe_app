import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_receipe_app/components/bottom_navigation_bar.dart';
import 'package:food_receipe_app/pages/home_page.dart';
import 'package:food_receipe_app/pages/notification_page.dart';
import 'package:food_receipe_app/pages/save_recipes_page.dart';
import 'package:food_receipe_app/pages/user_profile_page.dart';

class MainLandingPage extends StatefulWidget {
  const MainLandingPage({super.key});

  @override
  State<MainLandingPage> createState() => _MainLandingPageState();
}

class _MainLandingPageState extends State<MainLandingPage> {
  List<Widget> pages = [
    HomePage(),
    SaveRecipesPage(),
    NotificationPage(),
    UserProfilePage()
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  choosePage() {
    switch (this.currentIndex) {
      case 0:
        return pages[0];

      case 1:
        return pages[1];

      case 2:
        return pages[2];

      case 3:
        return pages[3];

      default:
        return pages[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: SvgPicture.asset("./assets/plus.svg"),
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: MyBottomNavigationBar(
          onTap: (value) => onTap(value),
          currentIndex: currentIndex,
        ),
        backgroundColor: Colors.white,
        body: choosePage(),
      ),
    );
  }
}
