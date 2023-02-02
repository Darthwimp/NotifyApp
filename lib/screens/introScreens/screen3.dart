import 'package:flutter/material.dart';
import 'package:my_app/constant/styles.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

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
              padding: EdgeInsets.only(top: 40.0),
              child: Image(
                image: AssetImage("assets/video-streaming.png"),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 35, left: 35, right: 35),
              child: Text(
                "Get the latest updates for your OTT platforms",
                style: introPageStyle,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
