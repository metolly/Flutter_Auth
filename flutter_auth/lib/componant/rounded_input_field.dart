import 'package:flutter/material.dart';
import 'package:flutter_auth/componant/text_field_container.dart';
import 'package:flutter_auth/constant.dart';

class RoundedInputField extends StatelessWidget {
  final String hinttext;
  final IconData icon;
  final ValueChanged<String> onchanged;
  const RoundedInputField({
    super.key,
    required this.hinttext,
    this.icon = Icons.person,
    required this.onchanged,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerTextField(
      child: TextField(
        onChanged: onchanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: hinttext,
            border: InputBorder.none),
      ),
    );
  }
}
