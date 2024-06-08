import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_receipe_app/components/IngridenstAndProcedureMoving.dart';
import 'package:food_receipe_app/components/save_recipe_card.dart';
import 'package:food_receipe_app/pages/save_recipes_page.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeDetailPreview extends StatefulWidget {
  const RecipeDetailPreview({super.key});

  @override
  State<RecipeDetailPreview> createState() => _RecipeDetailPreviewState();
}

class _RecipeDetailPreviewState extends State<RecipeDetailPreview> {
  // follow
  bool isFollow = false;
  void changingFollow() {
    setState(() {
      isFollow = !isFollow;
    });
  }

  bool isIngridentsClick = true;
  void changingTabs() {
    setState(() {
      isIngridentsClick = !isIngridentsClick;
    });
  }

  void handleMenuSelection(String value) {
    setState(() {
      onTapPress = false;
    });
    switch (value) {
      case 'share':
        // Implement share functionality
        print('Share clicked');
        break;
      case 'save':
        // Implement save functionality
        print('Save clicked');
        break;
    }
  }

  bool onTapPress = false;
  void onTap() {
    setState(() {
      onTapPress = !onTapPress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:
            onTapPress ? Color.fromRGBO(0, 0, 0, 0.5) : Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back)),
        automaticallyImplyLeading: true,
        actions: [
          PopupMenuButton<String>(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            onOpened: () => onTap(),
            onCanceled: () => onTap(),
            surfaceTintColor: Colors.white,
            color: Colors.white,
            elevation: 0,
            onSelected: handleMenuSelection,
            itemBuilder: (BuildContext context) {
              return {'share', 'save'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        choice == "share"
                            ? "./assets/share.svg"
                            : "./assets/unsave.svg",
                        height: 24,
                        width: 24,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        choice,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff121212),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList();
            },
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SaveRecipeCard(
                    RecipeName: "Spicy chicken burger with French fries",
                    RecipeAuthor: "Laura wilson",
                    ImagePath: "./assets/food2.jpg",
                    Rate: 4,
                    time: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "13k Reviews",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffA9A9A9),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Laura Wilson",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff121212),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "./assets/location.svg",
                              height: 17,
                              width: 17,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Lagos, Nigeria",
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffA9A9A9),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => changingFollow(),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: isFollow
                                    ? Color(0xff129575)
                                    : Colors.transparent),
                            color: isFollow ? Colors.white : Color(0xff129575)),
                        child: Text(
                          isFollow ? "Following" : "Follow",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: isFollow ? Color(0xff129575) : Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // tabs move
              Expanded(child: TabsMovingIngridentsProcedures())
            ],
          ),
          if (onTapPress)
            Opacity(
              opacity: 0.5,
              child: Container(
                color: Colors.black,
              ),
            ),
        ],
      ),
    );
  }
}
