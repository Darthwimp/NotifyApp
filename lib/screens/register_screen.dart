// ignore_for_file: camel_case_types, must_be_immutable, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/constant/styles.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/screens/sign-in.dart';
import 'package:my_app/sevices/auth_services.dart';

class Register_screen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  Register_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 120.0, bottom: 30.0),
          child: Image.asset(
            'assets/Notify-screens.png',
            height: 150,
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
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Text(
                        "Register",
                        style: loginPage,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                      child: TextField(
                        style: const TextStyle(color: Colors.white70),
                        controller: emailController,
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.black26,
                            labelText: "EMAIL",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                      child: TextField(
                        style: const TextStyle(color: Colors.white70),
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.black26,
                            labelText: "PASSWORD",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                      child: TextField(
                        style: const TextStyle(color: Colors.white70),
                        obscureText: true,
                        controller: confirmpasswordController,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.black26,
                            labelText: "CONFIRM PASSWORD",
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 225.0),
                      child: Container(
                        height: 50.0,
                        // width: MediaQuery.of(context).size.width,
                        width: 150.0,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (emailController.text == "" ||
                                passwordController.text == "") {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("All fields are to be filled"),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            } else if (passwordController.text !=
                                confirmpasswordController.text) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Enter correct password"),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            } else {
                              User? result = await Authservice().Register(
                                  emailController.text,
                                  passwordController.text,
                                  context);
                              if (result != null) {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => home_page()),
                                    (route) => false);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Error occured"),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              }
                            }
                            //idhar setstate add krna h.
                          },
                          child: const Text(
                            "SIGN UP",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple.shade800,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogIn(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 30.0, left: 50.0, right: 10.0),
                        child: Text(
                          'Already have an account? Sign In',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
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
