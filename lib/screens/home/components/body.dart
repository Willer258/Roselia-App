// ignore_for_file: unused_local_variable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:workoutapp/shared/title_with_more_btn.dart';

import '../../../shared/header_with_search.dart';
import 'featured_plants.dart';
import 'recommended_plant.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearch(size: size),
          SizedBox(
            height: 30,
          ),
          TitleAnButton(
            title: 'Recommandé',
            press: () {},
          ),
          RecommandedPlants(size: size),
          TitleAnButton(title: 'Les plantes du moment', press: () {}),
          FeaturedPlants(size: size)
        ],
      ),
    );
  }
}
