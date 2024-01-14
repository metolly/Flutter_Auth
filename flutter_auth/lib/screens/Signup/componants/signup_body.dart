import 'package:flutter/material.dart';
import 'package:flutter_auth/componant/already_have_account.dart';
import 'package:flutter_auth/componant/rounded_button.dart';
import 'package:flutter_auth/componant/rounded_input_field.dart';
import 'package:flutter_auth/componant/rounded_password_field.dart';
import 'package:flutter_auth/constant.dart';
import 'package:flutter_auth/screens/Signup/componants/or_divider.dart';
import 'package:flutter_auth/screens/Signup/componants/signup_background.dart';
import 'package:flutter_auth/screens/Signup/componants/social_icon.dart';
import 'package:flutter_auth/screens/login_page/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignupBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SignUp",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * .35,
            ),
            RoundedInputField(
              hinttext: "Your E-Mail",
              onchanged: (value) {},
            ),
            RoundedPasswordTextField(
              onchange: (Value) {},
            ),
            RoundedButton(
              text: 'Sign Up',
              press: () {},
            ),
            SizedBox(
              height: size.height * .015,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              login: false,
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  press: () {},
                  iconsrc: 'assets/icons/facebook.svg',
                ),
                SocialIcon(
                  press: () {},
                  iconsrc: 'assets/icons/twitter.svg',
                ),
                SocialIcon(
                  press: () {},
                  iconsrc: 'assets/icons/google-plus.svg',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
