import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableSearchBar extends StatefulWidget {
  TextEditingController controller;
  ReusableSearchBar({super.key, required this.controller});

  @override
  State<ReusableSearchBar> createState() => _ReusableSearchBarState();
}

class _ReusableSearchBarState extends State<ReusableSearchBar> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      controller: widget.controller,
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
