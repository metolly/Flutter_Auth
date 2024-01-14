import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/Signup/componants/signup_background.dart';
import 'package:flutter_auth/screens/Signup/componants/signup_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignupScreenBody(),
    );
  }
}
