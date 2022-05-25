import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget{
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/assets/image/icon.png', width: 150, height: 150,);
  }

}