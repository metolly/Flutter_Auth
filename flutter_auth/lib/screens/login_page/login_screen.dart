import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/login_page/login_componant/Login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}
