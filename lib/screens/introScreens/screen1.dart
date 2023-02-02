import 'package:flutter/material.dart';
import 'package:my_app/constant/styles.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: mainPageDecor,
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
              padding: EdgeInsets.all(30.0),
              child: Image(
                image: AssetImage("assets/nettoflixo.png"),
                height: 200,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Text(
              "Manage Subscriptions",
              style: introPageStyle,
            ),
          )
        ],
      ),
    );
  }
}
