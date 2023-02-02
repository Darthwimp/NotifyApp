import 'package:flutter/material.dart';
import 'package:my_app/constant/styles.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1, -1),
          end: Alignment(1, 1),
          colors: <Color>[
            Colors.grey.shade900,
            Color(0xFF2F2D2D),
          ],
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 30,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(40.0),
              child: Image(
                image: AssetImage("assets/anal.png"),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Text(
              "Plan Your Spendings",
              style: introPageStyle,
            ),
          )
        ],
      ),
    );
  }
}
