import 'package:flutter/material.dart';

import '../../constant.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    this.text = '',
    this.image = '',
  });

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(
          flex: 2,
        ),
        // Text(
        //   'Juno',
        //   style: TextStyle(
        //     color: kPrimaryColor,
        //     fontSize: 22,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        // SizedBox(
        //   height: 10,
        // ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(),
        Image.asset(
          image,
          width: 275,
          height: 275,
        ),
      ],
    );
  }
}
