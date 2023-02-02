// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:my_app/constant/info.dart';
import 'package:my_app/constant/styles.dart';
import 'package:my_app/screens/subInputPage.dart';

class subAdd extends StatelessWidget {
  const subAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: homePageDecor,
        child: SafeArea(
          child: InkWell(
            child: ListView.builder(
              itemCount: subInfo.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: ListTile(
                      leading: Image(
                          image: AssetImage(
                              subInfo[index]["location"].toString())),
                      title: Text(
                        subInfo[index]["name"].toString(),
                        style: homePageText1,
                      ),
                      tileColor: tiles[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => subInputPage(),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
