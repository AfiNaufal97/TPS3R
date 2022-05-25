import 'package:flutter/material.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

import '../../utils/colors/colors_style.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({Key? key}) : super(key: key);

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  bool valueInput = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                value: valueInput,
                activeColor: MyColors.main,
                focusColor: MyColors.main,
                groupValue: valueInput,
                onChanged: (value) {
                  setState(() {
                    valueInput = !valueInput;
                  });
                },
              ),
              TextWidget(text: StringResource.titleRadioWomen)
            ],
          ),
          const SizedBox(width: 30,),
          Row(
            children: [
              Radio(
                value: !valueInput,
                activeColor: MyColors.main,
                focusColor: MyColors.main,
                groupValue: valueInput,
                onChanged: (value) {
                  setState(() {
                    valueInput = !valueInput;
                  });
                },
              ),
              TextWidget(text: StringResource.titleRadioMen)
            ],
          ),
        ],
      ),
    );
  }
}
