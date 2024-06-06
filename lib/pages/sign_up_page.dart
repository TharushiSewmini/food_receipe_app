import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_receipe_app/components/reusable_button.dart';
import 'package:food_receipe_app/components/reusable_testField.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
    void Function()? onClick;
   SignUpPage({super.key , required this.onClick});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
       
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello,",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Welcome Back!",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 57,
                ),
                ReusableTextField(
                    controller: _emailController,
                    textTitle: 'Email',
                    placeHolderText: "Enter Email"),
                const SizedBox(
                  height: 30,
                ),
                ReusableTextField(
                    controller: _passwordController,
                    textTitle: 'Password',
                    placeHolderText: "Enter Password"),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Forget Password ?",
                  style: GoogleFonts.poppins(
                      color: Color(0xffFF9C00),
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 25,
                ),
                ReusableButton(
                  onClick: () {},
                  buttonText: 'Sign Up',
                ),
                  const SizedBox(
                  height: 55,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account? ",
                      style: GoogleFonts.poppins(
                          color: Color(0xff000000),
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: widget.onClick,
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.poppins(
                            color: Color(0xffFF9C00),
                            fontSize: 11,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                     const SizedBox(
                  height: 5,
                ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
