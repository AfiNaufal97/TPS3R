import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/bloc_page.dart';
import 'package:tps3r/pages/edit_profile_page.dart';
import 'package:tps3r/pages/faq_page.dart';
import 'package:tps3r/pages/information_waste_page.dart';
import 'package:tps3r/pages/location_page.dart';
import 'package:tps3r/pages/login_page.dart';
import 'package:tps3r/pages/main_page.dart';
import 'package:tps3r/pages/onboarding_page.dart';
import 'package:tps3r/pages/register_page.dart';
import 'package:tps3r/pages/result_page.dart';
import 'package:tps3r/pages/reward_page.dart';
import 'package:tps3r/pages/tracking_page.dart';
import 'package:tps3r/utils/routes/route_name.dart';

import 'bloc/bloc_image.dart';

void main() => runApp(const MyApps());

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BlocPage()),
        BlocProvider(create: (context) => BlocImage())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesName.onBoardingPage,
        routes: {
          RoutesName.login: (context) => LoginPage(),
          RoutesName.register: (context) => RegisterPage(),
          RoutesName.profileEdit: (context) => const EditProfilePage(),
          RoutesName.locationPage: (context) => const LocationPage(),
          RoutesName.mainPage: (context) => const MainPage(),
          RoutesName.rewardPage: (context) => const RewardPage(),
          RoutesName.onBoardingPage: (context) => const OnBoardingPage(),
          RoutesName.trackingPage: (context) => const TrackingPage(),
          RoutesName.resultPage: (context) => const ResultPage(),
          RoutesName.faqPage: (context) => const FaqPage(),
          RoutesName.informationWastePage: (context) => const InformationWastePage()
        },
      ),
    );
  }
}
