import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IngridiantsCard extends StatelessWidget {
  String IngriName;
  double IngriQty;
  IngridiantsCard({super.key, required this.IngriName, required this.IngriQty});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.center,
      height: 76,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 238, 235, 235),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            IngriName,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff121212),
            ),
          ),
          Text(
            IngriQty.toString() + "g",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xffA9A9A9),
            ),
          )
        ],
      ),
    );
  }
}
