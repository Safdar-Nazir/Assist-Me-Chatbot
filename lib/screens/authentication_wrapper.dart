import 'package:assist_me/models/user.dart';
import 'package:assist_me/screens/homepage.dart';
import 'package:assist_me/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthenticationWrapper extends StatelessWidget {
  static const id = 'wrapper';
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);

    return LoginScreen();
    // if (user == null) {
    //   return LoginScreen();
    // } else {
    //   return HomePage();
    // }
  }
}
