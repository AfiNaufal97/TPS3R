import 'package:flutter/material.dart';

// ignore: must_be_immutable, non_constant_identifier_names
Widget TextLinkWidget ({  required String textNotLink,
required String textForLink,
required void Function() function}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textNotLink),
        GestureDetector(
          onTap:function,
          child: Text(textForLink)),
      ],
    );
  }
