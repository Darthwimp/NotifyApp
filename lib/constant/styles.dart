import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle introPageStyle = const TextStyle(color: Colors.white, fontSize: 20);
TextStyle appHead = const TextStyle(
    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);

Color primary = Colors.lightBlue.shade900;

BoxDecoration mainPageDecor = BoxDecoration(
  gradient: LinearGradient(
    begin: const Alignment(-1, -1),
    end: const Alignment(1, 1),
    colors: <Color>[
      Colors.grey.shade900,
      const Color(0xFF2F2D2D),
    ],
  ),
);

BoxDecoration homePageDecor = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(1, 1),
    colors: <Color>[Color(0xFFB1060F), Color(0xFFAD1457), Color(0xFF283593)],
  ),
);

Row shape1 = Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: const [
    Image(
      height: 90,
      image: AssetImage("assets/Vector1.png"),
    )
  ],
);

TextStyle loginPage = GoogleFonts.poppins(
    fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white);

TextStyle subTiles = GoogleFonts.poppins(fontSize: 14, color: Colors.white);

TextStyle homePageText1 =
    GoogleFonts.poppins(fontSize: 20, color: Colors.white);
TextStyle homePageText2 =
    GoogleFonts.poppins(fontSize: 35, color: Colors.white);

List<Color> tiles = [
  Color(0xFFD50000),
  Color(0xFF01579B),
  Color(0xFF1A237E),
  Colors.green
];

Row homePageText = Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    const SizedBox(
      width: 20,
    ),
    Text(
      "Username!",
      style: homePageText2,
    ),
    const SizedBox(
      width: 120,
    ),
    const Icon(
      Icons.logout_rounded,
      size: 20,
      color: Colors.white,
    )
  ],
);
