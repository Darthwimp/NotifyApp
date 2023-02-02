import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle introPageStyle = const TextStyle(color: Colors.white, fontSize: 20);
TextStyle appHead = const TextStyle(
    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);

Color primary = Colors.deepPurple;

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
BoxDecoration restpagedecor = BoxDecoration(
  gradient: LinearGradient(
    begin: const Alignment(-1, -1),
    end: const Alignment(1, 1),
    colors: <Color>[
      Color.fromARGB(255, 191, 16, 211),
      Color.fromARGB(255, 145, 79, 129),
    ],
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

TextStyle loginPage = GoogleFonts.ubuntu(
    fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white);

TextStyle subTiles = GoogleFonts.openSans(fontSize: 14, color: Colors.white);

List<Color> tiles = [
  Color(0xFFD50000),
  Color(0xFF01579B),
  Color(0xFF1A237E),
  Colors.green
];
