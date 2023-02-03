import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

import 'package:my_app/constant/styles.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/screens/subAdd.dart';
import 'package:my_app/constant/info.dart';

class subInputPage extends StatelessWidget {
  int idx = 0;
  subInputPage({super.key, required index}) {
    idx = index;
  }

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference subs =
      FirebaseFirestore.instance.collection("Subscriptions");

  TextEditingController duratiion = TextEditingController();
  String today = DateTime.now().toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: homePageDecor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: duratiion,
                style: const TextStyle(color: Colors.white70),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter your duration",
                  fillColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.white,)
                ),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink.shade900),
                onPressed: () async {
                  Map<String, dynamic> data = {
                    "Service-Name": subInfo[idx]["name"].toString(),
                    "Creation-Date": today,
                    "Duration": duratiion.text,
                    "URL": subInfo[idx]["URL"].toString(),
                  };
                  subs.add(data);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => home_page(),
                    ),
                  );
                },
                child: const Text("Add!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
