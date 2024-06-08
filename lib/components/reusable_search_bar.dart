import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableSearchBar extends StatelessWidget {
  TextEditingController controller;
  void Function()? onTap;
  ReusableSearchBar({super.key, required this.controller , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      cursorColor: Color(0xff129575),
      decoration: InputDecoration(
        isDense: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            "./assets/search.svg",
            height: 18,
            width: 18,
                 
          ),
        ),
        hintText: "Search Recipe",
        hintStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xffD9D9D9),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xffD9D9D9)),
        ),
        focusedBorder: OutlineInputBorder(
          
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xffD9D9D9))),
      ),
    );
  }
}
