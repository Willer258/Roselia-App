// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constant.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/flower.svg',
                  color: kPrimaryColor,
                )),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/favorite.svg',
                  color: kPrimaryColor,
                )),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/profile.svg',
                  color: kPrimaryColor,
                )),
          ],
        ),
        height: 80,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.38))
        ]));
  }
}
