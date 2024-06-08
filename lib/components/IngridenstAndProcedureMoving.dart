import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_receipe_app/components/IngridiantsCard.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsMovingIngridentsProcedures extends StatefulWidget {
  const TabsMovingIngridentsProcedures({super.key});

  @override
  State<TabsMovingIngridentsProcedures> createState() =>
      _TabsMovingIngridentsProceduresState();
}

class _TabsMovingIngridentsProceduresState
    extends State<TabsMovingIngridentsProcedures> {
  bool isIngridentsClick = true;
  void changingTabs() {
    setState(() {
      isIngridentsClick = !isIngridentsClick;
    });
  }

  List<IngridiantsDetails> details = [
    IngridiantsDetails(IngriName: "Tomatos", IngriQty: 500),
    IngridiantsDetails(IngriName: "Cabbage", IngriQty: 300),
    IngridiantsDetails(IngriName: "Carrot", IngriQty: 300),
    IngridiantsDetails(IngriName: "Taco", IngriQty: 300),
    IngridiantsDetails(IngriName: "Slice Bread", IngriQty: 600),
    IngridiantsDetails(IngriName: "Carrot", IngriQty: 300),
    IngridiantsDetails(IngriName: "Taco", IngriQty: 300),
    IngridiantsDetails(IngriName: "Slice Bread", IngriQty: 600),
  ];
  var servingTimes = 1;
  var text = """Start with a crust. ...
                Add a sauce. ...
                Add some veggies, such as: ...
                Try some fruit on your pizza, such as: ...
                Add some protein, such as: ...
                Add cheese. ...
                Bake your creation in a hot oven (450 F or above).
                  Add a sauce. ...
                Add some veggies, such as: ...
                Try some fruit on your pizza, such as: ...
                Add some protein, such as: ...
                Add cheese. ...
                Bake your creation in a hot oven (450 F or above).""";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: double.maxFinite,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "./assets/serve.svg",
                      width: 17,
                      height: 15,
                    ),
                    Text(
                      servingTimes.toString() + " serve",
                      style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffA9A9A9)),
                    )
                  ],
                ),
                Text(
                  details.length.toString() + " items",
                  style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA9A9A9)),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () => changingTabs(),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    decoration: BoxDecoration(
                        color: isIngridentsClick
                            ? Color(0xff129575)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Ingrident",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: isIngridentsClick
                            ? Colors.white
                            : Color(0xff129575),
                      ),
                    ),
                  ),
                )),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () => changingTabs(),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    decoration: BoxDecoration(
                        color: !isIngridentsClick
                            ? Color(0xff129575)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Procedure",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: !isIngridentsClick
                              ? Colors.white
                              : Color(0xff129575)),
                    ),
                  ),
                )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            isIngridentsClick
                ? Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: details.length,
                        itemBuilder: (context, index) {
                          return IngridiantsCard(
                              IngriName: details[index].IngriName,
                              IngriQty: details[index].IngriQty);
                        }),
                  )
                : Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                          child: Text(
                        text,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      )),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

class IngridiantsDetails {
  String IngriName;
  double IngriQty;

  IngridiantsDetails({required this.IngriName, required this.IngriQty});
}
