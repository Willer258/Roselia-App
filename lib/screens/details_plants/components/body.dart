// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workoutapp/utils/constant.dart';

import 'image_and_icons.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Acheter',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(20))),
                      foregroundColor: kSecondaryColor,
                      backgroundColor: kPrimaryColor,
                    )),
              ),
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Description',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    style: TextButton.styleFrom(
                      foregroundColor: kSecondaryColor,
                      backgroundColor: Colors.transparent,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'Beethos\n',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kTextColor, fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'MONGOLIE',
                style: TextStyle(
                    fontSize: 15,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300))
          ])),
          Spacer(),
          Text('5000 F',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: kPrimaryColor,
                  ))
        ],
      ),
    );
  }
}
