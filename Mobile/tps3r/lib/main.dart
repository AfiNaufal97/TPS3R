import 'package:flutter/material.dart';
import 'package:tps3r/pages/edit_profile_page.dart';
import 'package:tps3r/pages/home_poge.dart';
import 'package:tps3r/pages/location_page.dart';
import 'package:tps3r/pages/login_page.dart';
import 'package:tps3r/pages/register_page.dart';
import 'package:tps3r/pages/reward_page.dart';
import 'package:tps3r/utils/routes/route_name.dart';

void main() => runApp(const MyApps());

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.locationPage,
      routes: {
        RoutesName.login: (context) => LoginPage(),
        RoutesName.register: (context) => const RegisterPage(),
        RoutesName.profileEdit: (context) => const EditProfilePage(),
        RoutesName.locationPage: (context) => const LocationPage(),
        RoutesName.homePage: (context) => const HomePage(),
        RoutesName.rewardPage: (context) => const RewardPage()
      },
    );
  }
}
