import 'package:flutter/material.dart';
import 'package:my_app/constant/styles.dart';
import 'package:my_app/screens/subAdd.dart';

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
              height: 80,
            ),
            homePageText,
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 38.0),
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => subAdd()),
            );
          },
          icon: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 18.0, bottom: 18.0),
            child: const Icon(
              Icons.add,
              size: 25,
            ),
          ),
          label: Text(
            "Add",
            style: homePageText1,
          ),
          backgroundColor: Colors.black45,
        ),
      ),
    );
  }
}
