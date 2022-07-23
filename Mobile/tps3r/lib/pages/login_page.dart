import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/bloc_signin.dart';
import 'package:tps3r/bloc/cubit/bloc_singin_state.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/routes/route_name.dart';
import 'package:tps3r/widgets/atom/edit_text_widget.dart';
import 'package:tps3r/widgets/atom/icon_button_widget.dart';
import 'package:tps3r/widgets/atom/logo_widget.dart';
import 'package:tps3r/widgets/atom/text_link_widget.dart';
import 'package:tps3r/widgets/moleculs/say_hello_widget.dart';

import '../widgets/atom/button_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);



  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var email = '';
    var password = '';
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 LogoWidget(context),
                 SayHelloWidget(),
                const SizedBox(
                  height: 30,
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        EditTextWidget(
                          start: const Icon(Icons.email),
                          hint: 'contoh : afi@mail.com',
                          textTitleField: 'Email',
                          validator: (valueIn) {
                            if (valueIn != null && valueIn.isEmpty) {
                              return 'Tidak Boleh Kososng';
                            }

                            email = valueIn.toString();

                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        EditTextWidget(
                          start: const Icon(Icons.password),
                          hint: '*********',
                          textTitleField: 'Password',
                          cantRead: true,
                          validator: (valueIn) {
                            if (valueIn != null && valueIn.isEmpty) {
                              return 'Tidak Boleh Kososng';
                            }
                          
                              password = valueIn.toString();
                      
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        BlocConsumer<BlocSignin, BlocSignInState>(
                          builder: (context, state) {
                            if (state is BlocSigninLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return ButtonWidget(
                              textButton: StringResource.titleLogin,
                              color: MyColors.green,
                              function: () {
                                if (_formKey.currentState!.validate()) {
                                  context
                                      .read<BlocSignin>()
                                      .signinPasswordEmail(email, password);
                                }
                              },
                            );
                          },
                          listener: (context, state) {
                            if (state is BlocSigninEror) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(state.error)));
                            }
                            if (state is BlocSigninSuccess) {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  RoutesName.mainPage, (route) => false);
                            }
                          },
                        )
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButtonWidget(
                        icon: Image.asset('assets/assets/image/google.png'),
                        iconSize: 35,
                        function: () {}),
                    const SizedBox(
                      width: 30,
                    ),
                    IconButtonWidget(
                        icon: Image.asset('assets/assets/image/facebook.png'),
                        iconSize: 35,
                        function: () {})
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextLinkWidget(
                  textNotLink: StringResource.textNoLink,
                  textForLink: StringResource.textWithLink,
                  function: () {
                    Navigator.pushNamed(context, RoutesName.register);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
