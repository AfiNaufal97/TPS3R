import 'package:flutter/material.dart';

import 'package:tps3r/widgets/widget_medium/header/header_widget.dart';
import 'package:tps3r/widgets/widget_medium/icon_text/icon_text_widget.dart';
import 'package:tps3r/widgets/widget_mini/image/image_widget.dart';
import 'package:tps3r/widgets/widget_mini/text/text_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(type: 'profile'),
            const SizedBox(
              height: 20,
            ),
            ImageWidget(
              internet: false,
              pathImage: 'assets/assets/image/profile.png',
              whith: 110,
            ),
            TextWidget(
              text: 'Alex Jordan',
              sizeFont: 20,
              fontWeight: FontWeight.bold,
            ),
            IconTextWidget(
              icon: Icons.email,
              text: 'alex@mail.com',
              size: 18,
            ),
            IconTextWidget(
              icon: Icons.phone,
              text: '0813000000',
              size: 18,
            ),
            IconTextWidget(
              icon: Icons.work,
              text: 'Manager',
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
