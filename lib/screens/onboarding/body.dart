import 'package:assist_me/constant.dart';
import 'package:assist_me/screens/login/login_screen.dart';
import 'package:assist_me/screens/login/profile.dart';
import 'package:assist_me/screens/onboarding/onboarding_content.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<String> textData = [
    'Finding it difficult to ask for help?',
    'Hate to wait in long queue?',
    'Hi I am JUNO!\nLet me take you with me'
  ];
  List<String> imageData = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: textData.length,
                  itemBuilder: (context, index) => OnBoardingContent(
                        text: textData[index],
                        image: imageData[index],
                      )),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      textData.length,
                      (index) => buildDot(index),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: kPrimaryColor,
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color:
            currentPage == index ? Colors.black : Colors.black.withOpacity(0.5),
      ),
    );
  }
}
