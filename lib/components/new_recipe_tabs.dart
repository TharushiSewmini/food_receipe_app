import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodRecipeContainer extends StatelessWidget {
  const FoodRecipeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 251,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Container(
                padding: EdgeInsets.only(left: 10),
                height: 95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          offset: Offset(0.5, 1),
                          spreadRadius: 4,
                          blurRadius: 40)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: SizedBox(
                          width: 138,
                          height: 21,
                          child: Text(
                            'Steak with tomato sauce and bulgur rice.',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff484848),
                            ),
                            overflow: TextOverflow.ellipsis,
                          )),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 12,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return SvgPicture.asset(
                              "./assets/rate.svg",
                              height: 10,
                              width: 10,
                            );
                          }),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 12, top: 12, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "By James Milner",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffA9A9A9),
                            ),
                          ),
                          Text(
                            "20 mins",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffA9A9A9),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox( height: 30,)
            ],
          ),
          Positioned(
            right: 10,
            top: 5,
            child: Container(
                height: 86,
                width: 86,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(43),
                    child: Image.asset("./assets/food2.jpg"))),
          )
        ],
      ),
    );
  }
}

class FoodContainersRow extends StatefulWidget {
  const FoodContainersRow({super.key});

  @override
  State<FoodContainersRow> createState() => _FoodContainersRowState();
}

class _FoodContainersRowState extends State<FoodContainersRow> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: FoodRecipeContainer(),
          );
        });
  }
}
