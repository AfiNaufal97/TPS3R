import 'package:flutter/material.dart';
import 'package:tps3r/utils/colors/colors.dart';
import 'package:tps3r/widgets/widget_mini/button/button_general_widget.dart';
import 'package:tps3r/widgets/widget_mini/image/image_widget.dart';
import 'package:tps3r/widgets/widget_mini/text/text_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:tps3r/widgets/widget_mini/text_field/text_field_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController textname = TextEditingController(text: '');

  TextEditingController textEmail = TextEditingController(text: '');

  TextEditingController jenisKelamin = TextEditingController(text: '');

  TextEditingController textNomer = TextEditingController(text: '');

  String? selectedValue;

  List<String> items = [
    'Men',
    'Woman',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: ImageWidget(
                        internet: false,
                        pathImage: 'assets/assets/image/logo.png'),
                  ),
                  TextWidget(
                    text: 'Daftar Akun',
                    sizeFont: 18,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldWidget(hint: 'masukan nama ', controller: textname),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldWidget(hint: 'masukan email ', controller: textname),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButtonFormField2(
                      decoration: InputDecoration(
                          focusColor: mainColor,
                          hoverColor: mainColor,
                          border: OutlineInputBorder(
                              gapPadding: 1.0,
                              borderRadius: BorderRadius.circular(20))),
                      hint: Text(
                        'Gender',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                        });
                      },
                      buttonHeight: 40,
                      buttonWidth: 140,
                      itemHeight: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldWidget(
                      hint: 'masukan nomer Telepon ', controller: textname),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldWidget(
                      hint: 'masukan password ', controller: textname),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldWidget(
                      hint: 'ulang password ', controller: textname),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonGeneralWidget(text: 'Register'),
                  const SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
