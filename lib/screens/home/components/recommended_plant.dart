// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workoutapp/screens/details_plants/details_plants_screen.dart';
import 'package:workoutapp/utils/constant.dart';

class RecommandedPlants extends StatelessWidget {
  const RecommandedPlants({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(), //Slide stylé
      child: Row(
        children: [
          CardPlantsRecommended(
              image: 'assets/images/image1.png',
              name: 'BEETHOS',
              type: 'MONGOLIE',
              price: 5000,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsPlantsScreen()));
              },
              size: size),
          CardPlantsRecommended(
              image: 'assets/images/image2.png',
              name: 'THANATOS',
              type: 'TARTAROS',
              price: 15000,
              press: () {},
              size: size),
          CardPlantsRecommended(
              image: 'assets/images/image3.png',
              name: 'SHIVA',
              type: 'RWHANDA',
              price: 10000,
              press: () {},
              size: size),
          CardPlantsRecommended(
              image: 'assets/images/image4.png',
              name: 'NAHIDA',
              type: 'SUMERU',
              price: 3000,
              press: () {},
              size: size),
        ],
      ),
    );
  }
}

class CardPlantsRecommended extends StatelessWidget {
  const CardPlantsRecommended({
    Key? key,
    required this.size,
    required this.name,
    required this.type,
    required this.image,
    required this.price,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String name, type, image;
  final int price;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding / 3,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 1.5),
        width: size.width * 0.5,
        padding: EdgeInsets.all(kDefaultPadding / 2),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height / 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23)),
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '$name \n'.toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: '$type '.toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text('$price F',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          ?.copyWith(color: kPrimaryColor))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
