import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_receipe_app/components/food_category_tabs.dart';
import 'package:food_receipe_app/components/food_details_tabs.dart';
import 'package:food_receipe_app/components/new_recipe_tabs.dart';
import 'package:food_receipe_app/components/reusable_search_bar.dart';
import 'package:food_receipe_app/pages/recipe_detaile_preview_page.dart';
import 'package:food_receipe_app/pages/search_recipes_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var usreName = "Tharushi";
  final _searchTextController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // hello + username
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello " + usreName,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "What are you cooking today?",
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffA9A9A9),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // serach bar
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 30, bottom: 20, right: 20),
              child: SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                          height: 40,
                          child: ReusableSearchBar(
                            controller: _searchTextController,
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchRecipePage())),
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff129575)),
                      child: SvgPicture.asset(
                        "./assets/filter.svg",
                        height: 20,
                        width: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            // food category tabs
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 25, bottom: 20),
              child: FoodCategoryTabs(),
            ),

            const SizedBox(
              height: 15,
            ),
            //food details container row
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: SizedBox(
                height: 231,
                child: Row(
                  children: [
                    Expanded(child: FoodDetailsTabs()),
                  ],
                ),
              ),
            ),
            // new recipes
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'New Recipes',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff000000),
                ),
              ),
            ),

            Container(
              height: 160,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: 16,
                            ),
                            child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RecipeDetailPreview())),
                                child: FoodRecipeContainer()),
                          );
                        }),
                  ),
                ],
              ),
            )

            // bottom navigation bar
          ],
        ),
      ],
    ));
  }
}
