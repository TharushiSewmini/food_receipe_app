import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_receipe_app/components/save_recipe_card.dart';
import 'package:food_receipe_app/pages/recipe_detaile_preview_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SaveRecipesPage extends StatefulWidget {
  const SaveRecipesPage({super.key});

  @override
  State<SaveRecipesPage> createState() => _SaveRecipesPageState();
}

class _SaveRecipesPageState extends State<SaveRecipesPage> {
  final _searchController = new TextEditingController();
  List<SaveRecipeContainerDetails> details = [
    SaveRecipeContainerDetails(
        RecipeName: "Traditional spare ribs baked",
        RecipeAuthor: " By Chef John",
        ImagePath: "./assets/food2.jpg",
        Rate: 4,
        time: 20),
    SaveRecipeContainerDetails(
        RecipeName: "Lamb chops with fruity couscous and mint",
        RecipeAuthor: "By Spicy Nelly",
        ImagePath: "./assets/food1.png",
        Rate: 4,
        time: 30),
    SaveRecipeContainerDetails(
        RecipeName: "Traditional spare ribs baked",
        RecipeAuthor: " By Chef John",
        ImagePath: "./assets/food2.jpg",
        Rate: 4,
        time: 40),
    SaveRecipeContainerDetails(
        RecipeName: "Lamb chops with fruity couscous and mint",
        RecipeAuthor: "By Spicy Nelly",
        ImagePath: "./assets/food1.png",
        Rate: 3.5,
        time: 20),
    SaveRecipeContainerDetails(
        RecipeName: "Lamb chops with fruity couscous and mint",
        RecipeAuthor: "By Spicy Nelly",
        ImagePath: "./assets/food1.png",
        Rate: 4,
        time: 50),
    SaveRecipeContainerDetails(
        RecipeName: "Traditional spare ribs baked",
        RecipeAuthor: " By Chef John",
        ImagePath: "./assets/food2.jpg",
        Rate: 4.2,
        time: 40),
    SaveRecipeContainerDetails(
        RecipeName: "Lamb chops with fruity couscous and mint",
        RecipeAuthor: "By Spicy Nelly",
        ImagePath: "./assets/food1.png",
        Rate: 3.8,
        time: 40),
    SaveRecipeContainerDetails(
        RecipeName: "Traditional spare ribs baked",
        RecipeAuthor: " By Chef John",
        ImagePath: "./assets/food2.jpg",
        Rate: 4,
        time: 30),
    SaveRecipeContainerDetails(
        RecipeName: "Lamb chops with fruity couscous and mint",
        RecipeAuthor: "By Spicy Nelly",
        ImagePath: "./assets/food1.png",
        Rate: 4,
        time: 50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Saved recipes",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: const Color(0xff121212),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: details.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecipeDetailPreview())),
                      child: SaveRecipeCard(
                        RecipeName: details[index].RecipeName,
                        RecipeAuthor: details[index].RecipeAuthor,
                        ImagePath: details[index].ImagePath,
                        Rate: details[index].Rate,
                        time: details[index].time,
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class SaveRecipeContainerDetails {
  String RecipeName;
  String RecipeAuthor;
  String ImagePath;
  double Rate;
  int time;
  SaveRecipeContainerDetails(
      {required this.RecipeName,
      required this.RecipeAuthor,
      required this.ImagePath,
      required this.Rate,
      required this.time});
}
