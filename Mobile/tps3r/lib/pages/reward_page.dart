import 'package:flutter/material.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/widgets/atom/icon_button_widget.dart';
import 'package:tps3r/widgets/moleculs/header_widget.dart';
import 'package:tps3r/widgets/moleculs/ticket_point_widget.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(
              function: () {},
              text: StringResource.myReward,
              widget: IconButtonWidget(
                  function: () {},
                  icon: Image.asset('assets/assets/image/ticket.png'),
                  iconSize: 28),
            ),
            Column(
              children:  [
                TicketPointWidget(context),
              ],
            )
          ],
        ),
      ),
    );
  }
}
