import 'package:flutter/material.dart';
import 'package:flutter_login_ui/Screens/Login/login_screen.dart';
import 'package:flutter_login_ui/components/rounded_button.dart';
import 'background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_login_ui/constants.dart';
import 'package:flutter_login_ui/Screens/Signup/signup_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "WELCOME TO EDU",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.45,
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          ),
          RoundedButton(
            text: "Sign Up",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpScreen();
              }));
            },
          ),
        ],
      ),
      size: size,
    );
  }
}
