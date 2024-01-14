import 'package:flutter/material.dart';
import 'package:flutter_auth/componant/rounded_button.dart';
import 'package:flutter_auth/constant.dart';
import 'package:flutter_auth/screens/Signup/Signup_screen.dart';
import 'package:flutter_auth/screens/login_page/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_auth/screens/welcome/componant/background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * .45,
            ),
            SizedBox(
              height: size.height * .03,
            ),
            RoundedButton(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              text: 'Login',
            ),
            RoundedButton(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignupScreen();
                }));
              },
              color: KPrimaryLightColor,
              textcolor: Colors.black,
              text: 'SignUp',
            ),
          ],
        ),
      ),
    );
  }
}
