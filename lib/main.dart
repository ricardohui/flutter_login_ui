import 'package:flutter/material.dart';
import 'package:flutter_login_ui/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_login_ui/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
