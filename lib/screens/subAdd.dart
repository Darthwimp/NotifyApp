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
          title: Image.asset('assets/appbar.png', fit: BoxFit.cover),
          backgroundColor: Colors.black),
      body: Container(
        decoration: mainPageDecor,
        child: SafeArea(
          child: ListView.builder(
            itemCount: subInfo.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: ListTile(
                  leading: Image(
                      image: AssetImage(subInfo[index]["location"].toString())),
                  title: Text(subInfo[index]["name"].toString()),
                  tileColor: tiles[index],
                  onTap: () {},
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
