import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/bloc_detail_user.dart';
import 'package:tps3r/utils/routes/route_name.dart';

class CekAuthPage extends StatefulWidget {
  const CekAuthPage({Key? key}) : super(key: key);

  @override
  State<CekAuthPage> createState() => _CekAuthPageState();
}

class _CekAuthPageState extends State<CekAuthPage> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 2), () {
      if (FirebaseAuth.instance.currentUser != null) {
        context.read<BlocDetailUser>().getDetailUser(FirebaseAuth.instance.currentUser!.uid);
        print('get detail');
        Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.mainPage, (route) => false);
      } else {
        Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.onBoardingPage, (route) => false);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
