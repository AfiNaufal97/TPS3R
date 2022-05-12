import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChecklistWidget extends StatelessWidget {
  bool? value;
  BuildContext context;
  ChecklistWidget({Key? key, this.value, required this.context})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: false, onChanged: (newValue) {});
  }
}
