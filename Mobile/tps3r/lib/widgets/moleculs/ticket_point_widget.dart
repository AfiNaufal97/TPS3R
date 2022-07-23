import 'package:flutter/material.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/widgets/moleculs/row_ticket_value_widget.dart';

// ignore: non_constant_identifier_names
Widget TicketPointWidget(BuildContext context){
    return Container(
      decoration: const BoxDecoration(color: MyColors.white),
      width: MediaQuery.of(context).size.width - 40,
      height: 100,
      child: Stack(children: [
        Image.asset(
          'assets/assets/image/ticket-back.png', width: MediaQuery.of(context).size.width,fit: BoxFit.fill,
        ),
         RowTicketValueWidget(context)
      ]),
    );
  }
