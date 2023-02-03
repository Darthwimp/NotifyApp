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
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
          child: Text(
            "Choose your subscription",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
        backgroundColor: Colors.black87,
        elevation: 0.0,
      ),
      body: Container(
        decoration: homePageDecor,
        child: SafeArea(
          child: InkWell(
            child: ListView.builder(
              itemCount: subInfo.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
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
                            builder: (context) => subInputPage(index: index),
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
