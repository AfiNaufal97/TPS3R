import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

class SayHelloWidget extends StatelessWidget {
  const SayHelloWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
  
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: StringResource.sayHello,
              style: FontsStyle.sayHello,
            ),
            SizedBox(
              width: 200,
              child: TextWidget(
                text: StringResource.sayHelloText,
                style: FontsStyle.textMedium,
              ),
            )
          ],
        ),
        Lottie.asset('assets/assets/json/say_hello.json', width: 120)
      ],
    );
  }
}
