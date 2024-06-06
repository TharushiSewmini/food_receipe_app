import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_receipe_app/components/reusable_search_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchRecipePage extends StatelessWidget {
  SearchRecipePage({super.key});
  final _searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          centerTitle: true,
          elevation: 0,
          scrolledUnderElevation: 0,
          title: Text(
            "Search recipes",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff181818),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search row
            Padding(
                padding: const EdgeInsets.only(
                top: 7, bottom: 20),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                            height: 40,
                            child: ReusableSearchBar(
                                controller: _searchController)),
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
          
              Text(
              "Recent Search",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
