import 'package:flutter/material.dart';
import 'package:my_app/screens/introScreens/screen1.dart';
import 'package:my_app/screens/introScreens/screen2.dart';
import 'package:my_app/screens/introScreens/screen3.dart';
import 'package:my_app/screens/register_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({super.key});

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  PageController _controller = PageController();
  bool onLastPage = false;
  bool onSecondLastPage = false;
  Text nextText = const Text(
    "Next",
    style: TextStyle(fontSize: 18),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding:
                const EdgeInsets.only(top: 40.0, left: 120.0, bottom: 20.0),
            child: Image.asset(
              'assets/Notify-screens.png',
              height: 150,
            ),
          ),
          backgroundColor: Colors.black87,
          elevation: 0,
        ),
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                onLastPage = (index == 2);
                onSecondLastPage = (index == 1);
              },
              children: const [
                Screen1(),
                Screen2(),
                Screen3(),
              ],
            ),
            Container(
              alignment: const Alignment(0, 0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.deepPurple,
                      dotHeight: 4.9,
                      radius: 2.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple.shade800,
                          padding: const EdgeInsets.only(
                              left: 110, right: 110, top: 15, bottom: 15),
                        ),
                        onPressed: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeIn,
                          );
                          if (onLastPage) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Register_screen();
                                },
                              ),
                            );
                          }
                          if (onSecondLastPage) {
                            setState(() {
                              nextText = const Text(
                                "Get Started? :)",
                                style: TextStyle(fontSize: 14),
                              );
                            });
                          }
                        },
                        child: nextText),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
