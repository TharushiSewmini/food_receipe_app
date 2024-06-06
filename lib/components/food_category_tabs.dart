import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCategoryTabs extends StatefulWidget {
  const FoodCategoryTabs({super.key});

  @override
  State<FoodCategoryTabs> createState() => _FoodCategoryTabsState();
}

class _FoodCategoryTabsState extends State<FoodCategoryTabs> {
  var CategoryList = [
    "All",
    "Indian",
    "Asian",
    "Italian",
    "Dessert",
    "Nutrious",
    "Chinese"
  ];
  bool isTap = true;
  int TapIndex = 0;
  void onTap(int index){
    setState(() {
      TapIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: CategoryList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: ()=>onTap(index),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                    decoration: BoxDecoration(
                      color: TapIndex == index ? Color(0xff129575) : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      // Center the text
                      child: Text(
                        CategoryList[index],
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            // color: Color(0xff71B1A1),
                            color:TapIndex == index ? Colors.white : Color(0xff71B1A1) ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
