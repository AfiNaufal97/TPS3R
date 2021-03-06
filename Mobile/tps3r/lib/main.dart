import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:tps3r/bloc/bloc_add_image.dart';
import 'package:tps3r/bloc/bloc_auth.dart';
import 'package:tps3r/bloc/bloc_detail_user.dart';
import 'package:tps3r/bloc/bloc_image_prediction.dart';
import 'package:tps3r/bloc/bloc_page.dart';
import 'package:tps3r/bloc/bloc_show_detail.dart';
import 'package:tps3r/bloc/bloc_signin.dart';
import 'package:tps3r/bloc/bloc_singout.dart';
import 'package:tps3r/pages/cek_auth_page.dart';
import 'package:tps3r/pages/edit_profile_page.dart';
import 'package:tps3r/pages/faq_page.dart';
import 'package:tps3r/pages/information_waste_page.dart';
import 'package:tps3r/pages/location_page.dart';
import 'package:tps3r/pages/login_page.dart';
import 'package:tps3r/pages/main_page.dart';
import 'package:tps3r/pages/onboarding_page.dart';
import 'package:tps3r/pages/order_page.dart';
import 'package:tps3r/pages/register_member_page.dart';
import 'package:tps3r/pages/register_page.dart';
import 'package:tps3r/pages/result_page.dart';
import 'package:tps3r/pages/reward_page.dart';
import 'package:tps3r/pages/scurity_page_info.dart';
import 'package:tps3r/pages/tracking_page.dart';
import 'package:tps3r/utils/routes/route_name.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

late AndroidNotificationChannel? channel;

late FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await permission();

  // Set the background messaging handler early on, as a named top-level function
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  if (!kIsWeb) {
    channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      description:
          'This channel is used for important notifications.', // description
      importance: Importance.high,
    );

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    /// Create an Android Notification Channel.
    ///
    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await flutterLocalNotificationsPlugin!
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel!);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  runApp(const MyApps());
}

Future<void> permission() async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('User granted permission');
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    print('User granted provisional permission');
  } else {
    print('User declined or has not accepted permission');
  }
}

class MyApps extends StatefulWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  State<MyApps> createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  @override
  void initState() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null && !kIsWeb) {
        flutterLocalNotificationsPlugin!.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel!.id,
              channel!.name,
              channelDescription: channel!.description,
              // TODO add a proper drawable resource to android, for now using
              //      one that already exists in example app.
              icon: 'launch_background',
            ),
          ),
        );
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      Navigator.pushNamed(
        context,
        RoutesName.mainPage,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BlocPage()),
        BlocProvider(create: (context) => BlocAddImage()),
        BlocProvider(create: (context) => BlocImagePrediction()),
        BlocProvider(create: (context) => BlocShowDetail()),
        BlocProvider(create: (context) => BlocAuth()),
        BlocProvider(create: (context) => BlocSignin()),
        BlocProvider(create: (context) => BlocSingout()),
        BlocProvider(create: (context) => BlocDetailUser()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesName.cekAuth,
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
          RoutesName.informationWastePage: (context) =>
              const InformationWastePage(),
          RoutesName.orderPage: (context) => OrderPage(),
          RoutesName.registerMemberPage: (context) => RegisterMember(),
          RoutesName.infoDataUsersPage: (context) => const ScurityPageInfo(),
          RoutesName.cekAuth: (context) => CekAuthPage(),
        },
      ),
    );
  }
}
