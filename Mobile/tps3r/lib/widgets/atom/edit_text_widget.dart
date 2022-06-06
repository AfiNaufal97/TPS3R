import 'package:flutter/material.dart';
import 'package:tps3r/utils/colors/colors_style.dart';

// ignore: must_be_immutable
class EditTextWidget extends StatefulWidget {
  String hint;
  Widget? start;
  bool? notRegis;
  TextInputType? type;
  String textTitleField;
  void Function()? onEditingComplete;
  String? initialValue;
  bool? cantRead;
  String? Function(String? string) validator;

  EditTextWidget(
      {Key? key,
      required this.hint,
      this.cantRead = false,
      this.start,
      this.notRegis = false,
      this.initialValue,
      this.onEditingComplete,
      required this.validator,
      required this.textTitleField,
      this.type})
      : super(key: key);

  @override
  State<EditTextWidget> createState() => _EditTextWidgetState();
}

class _EditTextWidgetState extends State<EditTextWidget> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.type,
      obscureText: widget.cantRead! && !show ? true : false,
      initialValue: widget.initialValue ?? '',
      decoration: InputDecoration(
        prefixIcon: widget.start ?? const SizedBox(),
        suffixIcon: widget.cantRead!
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    show = !show;
                  });
                },
                child: show
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              )
            : const SizedBox(),
        hintText: widget.hint,
        labelText: widget.notRegis! ? '' : widget.textTitleField,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: MyColors.black,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: widget.validator,
    );
  }
}
