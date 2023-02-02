// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:my_app/constant/info.dart';
import 'package:my_app/constant/styles.dart';

class subAdd extends StatelessWidget {
  const subAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Choose your subscription",
        ),
        backgroundColor: Colors.black87,
        elevation: 0.0,
      ),
      body: Container(
        decoration: homePageDecor,
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: SafeArea(
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
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      tileColor: tiles[index],
                      onTap: () {},
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
