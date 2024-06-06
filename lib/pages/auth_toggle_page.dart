import 'package:flutter/material.dart';
import 'package:food_receipe_app/pages/sign_in_page.dart';
import 'package:food_receipe_app/pages/sign_up_page.dart';

class AuthTogglePage extends StatefulWidget {
  AuthTogglePage({super.key});

  @override
  State<AuthTogglePage> createState() => _AuthTogglePageState();
}

class _AuthTogglePageState extends State<AuthTogglePage> {
  bool isSignIn = false;
  void togglePages() {
    setState(() {
      isSignIn = !isSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isSignIn) {
      return SignInPage(onClick: ()=> togglePages(),);
    } else {
      return SignUpPage(onClick: ()=> togglePages(),);
    }
  }
}
