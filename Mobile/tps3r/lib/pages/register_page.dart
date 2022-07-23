import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/bloc_auth.dart';
import 'package:tps3r/bloc/cubit/bloc_auth_state.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/utils/routes/route_name.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

import '../utils/colors/colors_style.dart';
import '../widgets/atom/button_widget.dart';
import '../widgets/atom/edit_text_widget.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String alamat = '';
  String noHp = '';
  String password = '';
  RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Image.asset(
                  'assets/assets/image/icon.png',
                  width: 110,
                )),
                TextWidget(
                  text: StringResource.titleRegister,
                  style: FontsStyle.textTitleOnboarding
                      .copyWith(color: MyColors.green, fontSize: 25),
                ),
                TextWidget(
                  text: StringResource.textRegister,
                  style: FontsStyle.textRegular.copyWith(color: MyColors.green),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        EditTextWidget(
                            hint: StringResource.textInputName,
                            textTitleField: StringResource.textInputName,
                            validator: (valueIn) {
                              if (valueIn == null || valueIn.isEmpty) {
                                return 'Please enter some text';
                              }
                              name = valueIn;
                              return null;
                            }),
                        const SizedBox(
                          height: 16,
                        ),
                        EditTextWidget(
                            hint: StringResource.hintEmail,
                            textTitleField: StringResource.titleFieldEmail,
                            validator: (valueIn) {
                              if (valueIn == null || valueIn.isEmpty) {
                                return 'Please enter some text';
                              }
                              if (!valueIn.contains('@')) {
                                return 'Email invalid';
                              }
                              email = valueIn;
                              return null;
                            }),
                        const SizedBox(
                          height: 16,
                        ),
                        EditTextWidget(
                            hint: StringResource.textHintAddress,
                            textTitleField: StringResource.textTitleAddress,
                            validator: (valueIn) {
                              if (valueIn == null || valueIn.isEmpty) {
                                return 'Please enter some text';
                              }

                              alamat = valueIn;
                              return null;
                            }),
                        const SizedBox(
                          height: 16,
                        ),

                        // TextWidget(text: StringResource.titleGender),
                        // const RadioButtonWidget(),
                        // const SizedBox(
                        //   height: 16,
                        // ),
                        EditTextWidget(
                            hint: StringResource.hintPhone,
                            type: TextInputType.number,
                            textTitleField: StringResource.titleFieldPhone,
                            validator: (valueIn) {
                              if (valueIn == null || valueIn.isEmpty) {
                                return 'Please enter some text';
                              }
                              noHp = valueIn;
                              return null;
                            }),
                        const SizedBox(
                          height: 16,
                        ),
                        EditTextWidget(
                            hint: StringResource.hintPassword,
                            cantRead: true,
                            textTitleField: StringResource.titleFieldPassword,
                            validator: (valueIn) {
                              if (valueIn == null || valueIn.isEmpty) {
                                return 'Please enter some text';
                              }
                              password = valueIn;
                              return null;
                            }),
                        const SizedBox(
                          height: 20,
                        ),
                        TextWidget(
                          text: StringResource.textTerms,
                          style: FontsStyle.textSmall
                              .copyWith(color: MyColors.green),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        BlocConsumer<BlocAuth, BlocAuthState>(
                          builder: (context, state) {
                            if (state is AuthLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return ButtonWidget(
                              textButton: StringResource.titleRegister,
                              color: MyColors.green,
                              function: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<BlocAuth>().createUser(
                                      name, email, noHp, alamat, password);
                                }
                              },
                            );
                          },
                          listener: (context, state) {
                            if (state is AuthError) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Error')));
                            }
                            if (state is AuthSuccess) {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  RoutesName.mainPage, (route) => false);
                            }
                          },
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
