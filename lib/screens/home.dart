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
      appBar: AppBar(
          title: Image.asset('assets/appbar.png', fit: BoxFit.cover),
          backgroundColor: Colors.black),
      body: Container(
        decoration: mainPageDecor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Hola!',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
                const Text(
                  'Aditya',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 40,
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Active Plans',
                  style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10.0,
                  width: 110.0,
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const subAdd()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey),
                    ),
                    child: Image.asset('assets/material-symbols_add.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
