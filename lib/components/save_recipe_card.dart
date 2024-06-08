import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SaveRecipeCard extends StatefulWidget {
  String RecipeName;
  String RecipeAuthor;
  String ImagePath;
  double Rate;
  int time;
  SaveRecipeCard(
      {super.key,
      required this.RecipeName,
      required this.RecipeAuthor,
      required this.ImagePath,
      required this.Rate,
      required this.time});

  @override
  State<SaveRecipeCard> createState() => _SaveRecipeCardState();
}

class _SaveRecipeCardState extends State<SaveRecipeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 150,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.ImagePath),
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
                    Colors.black.withOpacity(0.8),
                  ],
                  stops: [0.2, 1],
                  center: Alignment.center,
                  radius: 1.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 194,
                  child: Text(
                    widget.RecipeName,
                    style: GoogleFonts.poppins(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "By " + widget.RecipeAuthor,
                      style: GoogleFonts.poppins(
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 212, 212, 212),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "./assets/timer.svg",
                          height: 17,
                          width: 17,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.time.toString() + "min",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffD9D9D9),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 4,
              right: 4,
              child: Container(
                padding: EdgeInsets.fromLTRB(12, 0.5, 12, 0.5),
                decoration: BoxDecoration(
                    color: Color(0xffFFE1B3),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    // start + rating
                    SvgPicture.asset("./assets/rate.svg"),
                    Text(widget.Rate.toString())
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
