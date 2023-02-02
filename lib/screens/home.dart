import 'package:flutter/material.dart';
import 'package:my_app/constant/styles.dart';
import 'package:my_app/screens/subAdd.dart';
import 'package:my_app/screens/sign-in.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: homePageDecor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            homePageText,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => subAdd()),
          );
        },
        icon: const Icon(
          Icons.add,
          size: 30,
        ),
        label: Text(
          "Add more?",
          style: homePageText1,
        ),
        backgroundColor: primary,
      ),
    );
  }
}
