// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workoutapp/screens/details_plants/components/icon_card.dart';

import '../../../utils/constant.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      icon: Icon(Icons.chevron_left_outlined),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Spacer(),
                  IconsCard(
                    size: size,
                    icons: Icons.sunny,
                  ),
                  IconsCard(
                    size: size,
                    icons: Icons.dashboard_rounded,
                  ),
                  IconsCard(
                    size: size,
                    icons: Icons.water_drop_outlined,
                  ),
                  IconsCard(
                    size: size,
                    icons: Icons.money_off_outlined,
                  ),
                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      bottomLeft: Radius.circular(60)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29))
                  ],
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/4186045/pexels-photo-4186045.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'))),
            )
          ],
        ),
      ),
    );
  }
}
