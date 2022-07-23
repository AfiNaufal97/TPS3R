import 'package:flutter/material.dart';

// ignore: must_be_immutable, non_constant_identifier_names
Widget IconButtonWidget(
{
required Widget icon,
required double iconSize,
required void Function() function}
){
    return IconButton(
      onPressed: function,
      icon: icon,
      iconSize: iconSize,
    );
  }

