// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          FeaturePlantCard(
              press: (() {}),
              size: size,
              urlImage:
                  'https://images.pexels.com/photos/1477166/pexels-photo-1477166.jpeg?auto=compress&cs=tinysrgb&w=2060&h=750&dpr='),
          FeaturePlantCard(
              press: (() {}),
              size: size,
              urlImage:
                  'https://images.pexels.com/photos/796620/pexels-photo-796620.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          FeaturePlantCard(
              press: (() {}),
              size: size,
              urlImage:
                  'https://images.pexels.com/photos/1906439/pexels-photo-1906439.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          FeaturePlantCard(
              press: (() {}),
              size: size,
              urlImage:
                  'https://images.pexels.com/photos/64221/flower-sunflower-karnataka-india-64221.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key,
    required this.size,
    required this.urlImage,
    required this.press,
  }) : super(key: key);

  final Size size;
  final urlImage;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(urlImage))),
      ),
    );
  }
}
