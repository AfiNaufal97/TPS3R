import 'package:flutter/material.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

class RowTicketValueWidget extends StatelessWidget {
  const RowTicketValueWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        width: MediaQuery.of(context).size.width - 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/assets/image/gift.png',
                      width: 60,
                      height: 80,
                    ),
                  ],
                )),
            Expanded(
                flex: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10,),
                        TextWidget(
                          text: StringResource.pointValue2Text,
                          style: FontsStyle.textMedium,
                        ),
                        TextWidget(
                          text: StringResource.textTypeValue,
                          style: FontsStyle.textRegular,
                        ),
                         TextWidget(text: StringResource.pointValueDate, style:FontsStyle.textSmall,),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(height: 20,),
                        Icon(Icons.navigate_next, size: 30,),
                      ],
                    )
                  ],
                ))
          ],
        ));
  }
}
