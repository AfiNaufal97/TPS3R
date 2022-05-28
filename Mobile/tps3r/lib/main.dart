import 'package:flutter/material.dart';
import 'package:tps3r/pages/account_page.dart';
import 'package:tps3r/pages/edit_profile_page.dart';
import 'package:tps3r/pages/location_page.dart';
import 'package:tps3r/pages/login_page.dart';
import 'package:tps3r/pages/main_page.dart';
import 'package:tps3r/pages/onboarding_page.dart';
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
      initialRoute: RoutesName.mainPage,
      routes: {
        RoutesName.login: (context) => LoginPage(),
        RoutesName.register: (context) => const RegisterPage(),
        RoutesName.profileEdit: (context) => const EditProfilePage(),
        RoutesName.locationPage: (context) => const LocationPage(),
        RoutesName.mainPage: (context) => const MainPage(),
        RoutesName.rewardPage: (context) => const RewardPage(),
        RoutesName.accountPage: (context) => const AccountPage(),
        RoutesName.onBoardingPage: (context) => const OnBoardingPage()
      },
    );
  }
}
