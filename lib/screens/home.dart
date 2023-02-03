import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_app/constant/styles.dart';
import 'package:my_app/screens/subAdd.dart';

class home_page extends StatefulWidget {
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
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("Subscriptions")
                    .snapshots(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        var data = snapshot.data!.docs[index];
                        return SingleChildScrollView(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  data.get('URL'),
                                ),
                              ),
                            ),
                            child: const ListTile(
                              subtitle: Text("Working"),
                            ),
                          ),
                        );
                      },
                    );
                  }
                  return const Text("There is no data");
                }),
              ),
            ),
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
          icon: const Padding(
            padding: EdgeInsets.only(left: 8.0, top: 18.0, bottom: 18.0),
            child: Icon(
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
