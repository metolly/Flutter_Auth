import 'package:flutter/material.dart';
import 'package:flutter_auth/componant/already_have_account.dart';
import 'package:flutter_auth/componant/rounded_button.dart';
import 'package:flutter_auth/componant/rounded_input_field.dart';
import 'package:flutter_auth/componant/rounded_password_field.dart';
import 'package:flutter_auth/componant/text_field_container.dart';
import 'package:flutter_auth/constant.dart';
import 'package:flutter_auth/screens/Signup/Signup_screen.dart';
import 'package:flutter_auth/screens/login_page/login_componant/body_background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BodyBackground(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * .03,
          ),
          SvgPicture.asset(
            'assets/icons/login.svg',
            height: size.height * .35,
          ),
          SizedBox(
            height: size.height * .03,
          ),
          RoundedInputField(
            onchanged: (value) {},
            hinttext: 'Your Email',
          ),
          RoundedPasswordTextField(
            onchange: (value) {},
          ),
          RoundedButton(text: "Login", press: () {}),
          SizedBox(
            height: size.height * .03,
          ),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignupScreen();
              }));
            },
          )
        ],
      ),
    ));
  }
}
