import 'package:flutter/material.dart';
import 'package:tps3r/pages/section_main_page/home_poge.dart';
import 'package:tps3r/pages/section_main_page/profile_page.dart';

import '../resources/map_icon_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: ProfilePage())),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: mapIconButon
                .map((e) => Column(
                      children: [Icon(e['icon']), Text(e['text'].toString())],
                    ))
                .toList()),
      ),
    );
  }
}
