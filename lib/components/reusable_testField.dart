import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableTextField extends StatefulWidget {
  String textTitle;
  String placeHolderText;
  TextEditingController controller;

  ReusableTextField(
      {super.key,
      required this.controller,
      required this.textTitle,
      required this.placeHolderText});

  @override
  State<ReusableTextField> createState() => _ReusableTextFieldState();
}

class _ReusableTextFieldState extends State<ReusableTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.textTitle,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff121212)),
        ),
        const SizedBox( height: 5,) ,
        SizedBox(
          height: 55,
          child: TextField(
            cursorColor:  Color(0XFF129575),
            controller: widget.controller,
            decoration: InputDecoration(
                hintText: widget.placeHolderText,
                hintStyle: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffD9D9D9)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0XFFD9D9D9),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0XFF129575),
                    ),
                    borderRadius: BorderRadius.circular(10))),
          ),
        )
      ],
    );
  }
}
