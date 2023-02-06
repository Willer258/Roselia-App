// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workoutapp/utils/constant.dart';

class TitleAnButton extends StatelessWidget {
  const TitleAnButton({
    Key? key,
    required this.title,
    this.press,
  }) : super(key: key);

  final title;
  final press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding - 5),
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: press,
            child: Text(
              'Voir plus',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: const EdgeInsets.only(left: kDefaultPadding / 4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ))
        ],
      ),
    );
  }
}
