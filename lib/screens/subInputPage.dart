import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_app/constant/styles.dart';

class subInputPage extends StatelessWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference subs =
      FirebaseFirestore.instance.collection("Subscriptions");

  TextEditingController serviceName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: homePageDecor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: serviceName,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.black26,
                labelText: "Service Name",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                subs.add(
                  {
                    'Service-name': serviceName
                  }
                );
              },
              child: const Text("Add!"),
            )
          ],
        ),
      ),
    );
  }
}
