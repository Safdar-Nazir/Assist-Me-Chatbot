import 'package:assist_me/screens/onboarding/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: AuthenticationWrapper.id,
      // routes: {
      //   AuthenticationWrapper.id: (context) => AuthenticationWrapper(),
      //   LoginScreen.id: (context) => LoginScreen(),
      //   HomePage.id: (context) => HomePage(),
      // },
      home: OnBoardingScreens(),
    );
  }
}
