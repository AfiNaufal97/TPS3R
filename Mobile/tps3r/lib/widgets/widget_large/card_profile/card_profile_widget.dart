import 'package:flutter/material.dart';
import 'package:tps3r/widgets/widget_mini/button/button_general_widget.dart';
import 'package:tps3r/widgets/widget_mini/image/image_widget.dart';
import 'package:tps3r/widgets/widget_mini/text/text_widget.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class CardProfileWidget extends StatelessWidget {
  bool profileFromInternet;
  bool iconFromInternet;
  String imageProfile;
  String imageIcon;
  String textUpdateProfile;
  String textSaldo;
  String textValueSalo;
  String textLocation;
  String textName;

  CardProfileWidget(
      {Key? key,
      required this.imageIcon,
      required this.imageProfile,
      required this.textLocation,
      required this.textName,
      required this.iconFromInternet,
      required this.profileFromInternet,
      required this.textSaldo,
      required this.textUpdateProfile,
      required this.textValueSalo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Column(
            children: [
              ImageWidget(
                  internet: profileFromInternet, pathImage: imageProfile),
              ButtonGeneralWidget(text: textUpdateProfile),
            ],
          ),
          Column(
            children: [
              TextWidget(text: textName),
              Row(
                children: [
                  ImageWidget(internet: iconFromInternet, pathImage: imageIcon),
                  TextWidget(text: textLocation)
                ],
              ),
              Row(
                children: [
                  TextWidget(text: textSaldo),
                  ButtonGeneralWidget(text: textValueSalo)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
