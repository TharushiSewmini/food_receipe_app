import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomImageOverlay extends StatelessWidget {
  String RecipeName;
  String RecipeAuthor;
  String ImagePath;

   CustomImageOverlay({super.key , required this.RecipeName , required this.RecipeAuthor , required this.ImagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(1),
                  ],
                  stops: [0.0, 1.0],
                  center: Alignment.center,
                  radius: 1.0,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    RecipeName,
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
              "By" + RecipeAuthor,
                    style: GoogleFonts.poppins(
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA9A9A9),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 4,
              right: 4,
              child: Container(
                padding: EdgeInsets.fromLTRB(9, 1, 9, 1),
                decoration: BoxDecoration(
                    color: Color(0xffFFE1B3),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    // start + rating
                    SvgPicture.asset("./assets/rate.svg"),
                    Text("4")
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
