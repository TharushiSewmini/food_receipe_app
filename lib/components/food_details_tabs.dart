import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_receipe_app/pages/recipe_detaile_preview_page.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetailsTabs extends StatefulWidget {
  const FoodDetailsTabs({super.key});

  @override
  State<FoodDetailsTabs> createState() => _FoodDetailsTabsState();
}

class _FoodDetailsTabsState extends State<FoodDetailsTabs> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 15),
          child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RecipeDetailPreview())),
              child: FoodDetailTab()),
        );
      },
    );
  }
}

class FoodDetailTab extends StatefulWidget {
  const FoodDetailTab({super.key});

  @override
  State<FoodDetailTab> createState() => _FoodDetailTabState();
}

class _FoodDetailTabState extends State<FoodDetailTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 150,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 176,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  color: Color(0xFFD9D9D9),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Classic Greek Salad',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff484848),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Time',
                                  style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffA9A9A9),
                                  ),
                                ),
                                Text('15 Mins'),
                              ],
                            ),
                            Container(
                              height: 24,
                              width: 24,
                              padding: EdgeInsets.all(2.5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(55)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: SvgPicture.asset(
                                    "./assets/save.svg",
                                    height: 13,
                                    width: 10,
                                    fit: BoxFit.cover,
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                  alignment: Alignment.center,
                  height: 110,
                  width: 110,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(55)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(55),
                    child: Image.asset(
                      "./assets/food1.png",
                      fit: BoxFit.cover,
                    ),
                  ))),
        ],
      ),
    );
  }
}
