import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableButton extends StatelessWidget {
  String buttonText;
  void Function()? onClick;
   ReusableButton({super.key , required this.onClick , required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        alignment: Alignment.center,
        height: 54,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Color(0xff129575), borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
             buttonText,
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              width: 9,
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
