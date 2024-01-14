import 'package:flutter/material.dart';
import 'package:flutter_auth/componant/text_field_container.dart';
import 'package:flutter_auth/constant.dart';

class RoundedPasswordTextField extends StatelessWidget {
  final ValueChanged<String> onchange;
  const RoundedPasswordTextField({
    super.key,
    required this.onchange,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerTextField(
      child: TextField(
        decoration: InputDecoration(
            hintText: 'password',
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
