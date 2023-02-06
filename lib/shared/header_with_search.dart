// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workoutapp/utils/constant.dart';

class HeaderWithSearch extends StatelessWidget {
  const HeaderWithSearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Roselia plant',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.cover,
                      )),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23))
                    ]),
                height: 54,
                child: Row(children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Rechercher",
                        hintStyle:
                            TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    height: 25,
                    color: Color.fromARGB(255, 100, 100, 100),
                  ),
                ]),
              ))
        ],
      ),
    );
  }
}
