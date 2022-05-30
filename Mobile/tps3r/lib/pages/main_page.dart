import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/bloc_page.dart';
import 'package:tps3r/pages/section_main_page/home_poge.dart';
import 'package:tps3r/pages/section_main_page/maps_page.dart';
import 'package:tps3r/pages/section_main_page/notification_page.dart';
import 'package:tps3r/pages/section_main_page/profile_page.dart';
import 'package:tps3r/pages/store_page.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import '../resources/string_resource.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(child: BlocBuilder<BlocPage, int>(
        builder: (context, state) {
         switch (state) {
           case 0:
             return HomePage();
            case 1:
            return MapsPage();
            case 2: 
            return StorePage();
            case 3:
            return NotificationPage();
            case 4:
            return ProfilePage();
           default:
           return HomePage();
         }
        },
      ))),
      bottomNavigationBar: SizedBox(
          height: 50,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            GestureDetector(
              onTap: () {
                context.read<BlocPage>().home();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 3,
                  ),
                  Icon(
                    Icons.home,
                    color: context.watch<BlocPage>().state == 0
                        ? MyColors.green
                        : MyColors.grey,
                  ),
                  TextWidget(
                    text: StringResource.textIconHome,
                    style: FontsStyle.textSmall.copyWith(
                      fontSize: 10,
                      color: context.watch<BlocPage>().state == 0
                          ? MyColors.green
                          : MyColors.grey,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<BlocPage>().maps();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 3,
                  ),
                  Icon(
                    Icons.location_pin,
                    color: context.watch<BlocPage>().state == 1
                        ? MyColors.green
                        : MyColors.grey,
                  ),
                  TextWidget(
                    text: StringResource.textIconLocation,
                    style: FontsStyle.textSmall.copyWith(
                      fontSize: 10,
                      color: context.watch<BlocPage>().state == 1
                          ? MyColors.green
                          : MyColors.grey,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<BlocPage>().store();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 3,
                  ),
                  Icon(
                    Icons.shop,
                    color: context.watch<BlocPage>().state == 2
                        ? MyColors.green
                        : MyColors.grey,
                  ),
                  TextWidget(
                    text: StringResource.textIconProduct,
                    style: FontsStyle.textSmall.copyWith(
                      fontSize: 10,
                      color: context.watch<BlocPage>().state == 2
                          ? MyColors.green
                          : MyColors.grey,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<BlocPage>().notif();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 3,
                  ),
                  Icon(
                    Icons.notifications,
                    color: context.watch<BlocPage>().state == 3
                        ? MyColors.green
                        : MyColors.grey,
                  ),
                  TextWidget(
                    text: StringResource.textIconNotification,
                    style: FontsStyle.textSmall.copyWith(
                      fontSize: 10,
                      color: context.watch<BlocPage>().state == 3
                          ? MyColors.green
                          : MyColors.grey,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<BlocPage>().profile();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 3,
                  ),
                  Icon(
                    Icons.person,
                    color: context.watch<BlocPage>().state == 4
                        ? MyColors.green
                        : MyColors.grey,
                  ),
                  TextWidget(
                    text: StringResource.textIconProfile,
                    style: FontsStyle.textSmall.copyWith(
                      fontSize: 10,
                      color: context.watch<BlocPage>().state == 4
                          ? MyColors.green
                          : MyColors.grey,
                    ),
                  )
                ],
              ),
            )
          ])),
    );
  }
}
