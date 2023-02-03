// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:my_app/constant/styles.dart';
import 'package:my_app/screens/home.dart';

import '../sevices/auth_services.dart';

bool loading = false;

class LogIn extends StatefulWidget {
  LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
  
}

class _LogInState extends State<LogIn> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0, right: 55.0, bottom: 30.0),
          child: Center(
            child: Image.asset(
              'assets/Notify-screens.png',
              height: 150,
            ),
          ),
        ),
        backgroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                decoration: mainPageDecor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Image(
                          image: AssetImage("assets/Vector1.png"),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text(
                        "Log In",
                        style: loginPage,
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 35),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: emailController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.black26,
                          labelText: "Email",
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 35),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.black26,
                          labelText: "Password",
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    loading
                        ? CircularProgressIndicator()
                        : Padding(
                            padding: const EdgeInsets.only(left: 225),
                            child: Container(
                              height: 50.0,
                              width: 150,
                              child: ElevatedButton(
                                onPressed: () async {
                                  setState(() {
                                    loading = true;
                                  });
                                  if (emailController.text == "" ||
                                      passwordController.text == "") {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content:
                                            Text("All fields are to be filled"),
                                        backgroundColor: Colors.red,
                                      ),
                                    );
                                  } else {
                                    User? result = await Authservice().login(
                                        emailController.text,
                                        passwordController.text,
                                        context);
                                    if (result != null) {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  home_page()),
                                          (route) => false);
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text("Error occured"),
                                          backgroundColor: Colors.red,
                                        ),
                                      );
                                    }
                                  }
                                  setState(() {
                                    loading = false;
                                  });
                                },
                                child: const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.deepPurple.shade800),
                              ),
                            ),
                          ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    loading
                        ? CircularProgressIndicator()
                        : Center(
                            child: Container(
                              height: 50.0,
                              width: 330.0,
                              child: SignInButton(Buttons.Google,
                                  onPressed: () async {
                                setState(() {
                                  loading == true;
                                });
                                await Authservice().signInWithGoogle();
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => home_page()),
                                    (route) => false);
                                setState(() {
                                  loading = false;
                                });
                              }),
                            ),
                          )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
