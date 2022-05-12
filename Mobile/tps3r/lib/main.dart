import 'package:flutter/material.dart';
import 'package:tps3r/pages/detail_page/detail_page.dart';
import 'package:tps3r/pages/home_page/home_page.dart';
import 'package:tps3r/pages/login_page/login_page.dart';
import 'package:tps3r/pages/profile_page/profile_page.dart';
import 'package:tps3r/pages/register_page/register_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/profile': (context) =>  const ProfilePage(),
         '/home': (context) =>   HomePage(),
          '/detail': (context) =>   DetailPage(),
      },
    );
  }
}
