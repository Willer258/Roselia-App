// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workoutapp/utils/constant.dart';
import 'package:workoutapp/screens/home/components/body.dart';
import 'package:workoutapp/shared/my_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar AppBarWidget() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          height: 30,
          color: Color.fromARGB(221, 255, 255, 255),
        ),
      ),
    );
  }
}
