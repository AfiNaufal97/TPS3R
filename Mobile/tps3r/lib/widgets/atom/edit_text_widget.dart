import 'package:flutter/material.dart';
import 'package:tps3r/utils/colors/colors_style.dart';

// ignore: must_be_immutable
class EditTextWidget extends StatelessWidget {
  String hint;
  TextInputType? type;
  String textTitleField;
  String? initialValue;
  bool? cantRead;
  String? Function(String? string) validator;

  EditTextWidget(
      {Key? key,
      required this.hint,
      this.cantRead,
      this.initialValue,
      required this.validator,
      required this.textTitleField,
      this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      obscureText: cantRead ?? false,
      initialValue: initialValue ?? '',
      decoration: InputDecoration(
        hintText: hint,
        labelText: textTitleField,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.black,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: validator,
    );
  }
}
