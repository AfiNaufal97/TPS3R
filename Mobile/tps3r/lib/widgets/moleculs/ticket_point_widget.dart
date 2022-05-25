import 'package:flutter/material.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/widgets/moleculs/row_ticket_value_widget.dart';

class TicketPointWidget extends StatelessWidget {
  const TicketPointWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: MyColors.white),
      width: MediaQuery.of(context).size.width - 40,
      height: 100,
      child: Stack(children: [
        Image.asset(
          'assets/assets/image/ticket-back.png', width: MediaQuery.of(context).size.width,fit: BoxFit.fill,
        ),
        const RowTicketValueWidget()
      ]),
    );
  }
}
