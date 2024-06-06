import 'package:flutter/material.dart';
import 'package:food_receipe_app/components/reusable_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("./assets/vegetables.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.7), BlendMode.darken))),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Column(
             
                children: [
                  // logo
                 Padding(
                   padding: const EdgeInsets.only(top: 60 , bottom: 14),
                   child: Image.asset("./assets/vege.png"),
                 ),
                  Text(
                    "100K+ Premium Recipe",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Spacer( flex: 2,),
                   Text(
                    "Get",
                    style: GoogleFonts.poppins(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                   Text(
                    "Cooking",
                    style: GoogleFonts.poppins(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                   Text(
                    "Simple way to find Tasty Recipe",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                    Spacer( flex: 1,),
                  // button start cooking
                  Padding(
                    padding: const EdgeInsets.only(left: 20 , right: 20 , bottom: 54),
                    child: ReusableButton(onClick: () {  }, buttonText: 'Start Cooking',),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
