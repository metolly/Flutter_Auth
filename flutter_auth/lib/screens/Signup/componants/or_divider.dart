import 'package:flutter/material.dart';
import 'package:flutter_auth/constant.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * .02),
      width: size.width * .8,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Color(0xffD9D9D9),
              height: 1.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
              "OR",
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Divider(
              color: Color(0xffD9D9D9),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
