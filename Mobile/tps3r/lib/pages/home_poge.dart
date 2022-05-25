import 'package:flutter/material.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/widgets/moleculs/column_bapeling_widget.dart';

import '../widgets/moleculs/bottom_nav_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            ColumnBapelingWidget(
                nameButton: StringResource.myReward,
                title: StringResource.pointBapelling,
                value: StringResource.pointValueText),
            ColumnBapelingWidget(
                nameButton: StringResource.myReward,
                title: StringResource.pointBapelling,
                value: StringResource.pointValueText)
          ],
        ),
        bottomNavigationBar: const BottomNavWidget());
  }
}
