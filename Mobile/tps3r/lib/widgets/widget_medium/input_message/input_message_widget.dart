import 'package:flutter/material.dart';
import 'package:tps3r/utils/colors/colors.dart';
import 'package:tps3r/widgets/widget_mini/icon_button/icon_button_widget.dart';

class InputMessageWidget extends StatelessWidget {
  const InputMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Input Message....',
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 1, color: Colors.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          suffixIcon: 
              Padding(
                padding: const EdgeInsets.only(right:8.0),
                child: CircleAvatar(
                    backgroundColor: mainColor,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        IconButtonWidget(
                          icon: Icons.send,
                          color: Colors.white,
                        ),
                      ],
                    )
          ),
              ),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.5)),
    );
  }
}
