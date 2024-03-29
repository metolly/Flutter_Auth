import 'package:flutter/material.dart';
import 'package:flutter_auth/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  final String iconsrc;
  final VoidCallback press;
  const SocialIcon({
    Key? key,
    required this.iconsrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: KPrimaryLightColor),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconsrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
