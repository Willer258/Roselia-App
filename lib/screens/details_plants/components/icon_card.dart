// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class IconsCard extends StatelessWidget {
  const IconsCard({
    Key? key,
    required this.size,
    required this.icons,
  }) : super(key: key);

  final Size size;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 15),
                color: kPrimaryColor.withOpacity(0.22),
                blurRadius: 22),
            BoxShadow(
                offset: Offset(-15, -15), color: Colors.white, blurRadius: 20)
          ]),
      child: Icon(
        icons,
        color: kPrimaryColor.withOpacity(0.8),
        size: 40,
      ),
    );
  }
}
