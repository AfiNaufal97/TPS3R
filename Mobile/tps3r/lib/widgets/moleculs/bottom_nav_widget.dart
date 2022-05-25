import 'package:flutter/material.dart';

import '../../utils/colors/colors_style.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.home,
            size: 30,
          ),
          color: MyColors.grey,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.location_on,
            size: 30,
          ),
          color: MyColors.grey,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.store,
            size: 30,
          ),
          color: MyColors.grey,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            size: 30,
          ),
          color: MyColors.grey,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.person,
            size: 30,
          ),
          color: MyColors.grey,
        )
      ],
    );
  }
}
