import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_receipe_app/components/reusable_button.dart';
import 'package:food_receipe_app/components/reusable_testField.dart';
import 'package:food_receipe_app/models/register_model.dart';
import 'package:food_receipe_app/pages/home_page.dart';
import 'package:food_receipe_app/services/api_handler_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class SignInPage extends StatefulWidget {
  void Function()? onClick;
  SignInPage({super.key, required this.onClick});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _confirmPasswordController =
      new TextEditingController();
  ApiHandler apiHandler = ApiHandler();

  void addUser() async {
    print("clicked");
    try {
      final user = User(
          UserName: _nameController.text.trim(),
          Email: _emailController.text.trim(),
          Password: _passwordController.text.trim());
      var response = await apiHandler.addUser(user: user);

      if (response.statusCode == 200) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    } catch (e) {
      print(e);
    }
  }

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
                  "Create an account",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Let’s help you set up your account,\n it won’t take long.",
                  style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                ReusableTextField(
                    controller: _nameController,
                    textTitle: 'Name',
                    placeHolderText: "Enter Name"),
                const SizedBox(
                  height: 20,
                ),
                ReusableTextField(
                    controller: _emailController,
                    textTitle: 'Email',
                    placeHolderText: "Enter Email"),
                const SizedBox(
                  height: 20,
                ),
                ReusableTextField(
                    controller: _passwordController,
                    textTitle: 'Password',
                    placeHolderText: "Enter Password"),
                const SizedBox(
                  height: 20,
                ),
                ReusableTextField(
                    controller: _confirmPasswordController,
                    textTitle: 'Confirm Password',
                    placeHolderText: "Retype Password"),
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
                  onClick: addUser,
                  buttonText: 'Sign In',
                ),
                const SizedBox(
                  height: 55,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already a member? ",
                      style: GoogleFonts.poppins(
                          color: Color(0xff000000),
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: widget.onClick,
                      child: Text(
                        "Sign in",
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
