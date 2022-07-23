import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/bloc_detail_user.dart';
import 'package:tps3r/bloc/bloc_singout.dart';
import 'package:tps3r/bloc/cubit/bloc__detail_user_state.dart';
import 'package:tps3r/bloc/cubit/bloc_singout_state.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/utils/routes/route_name.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/list_widget.dart';
import 'package:tps3r/widgets/moleculs/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileWidget(
                home: false,
                size: 120,
              ),
              Padding(
                padding: const EdgeInsets.all(SizeResource.padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: StringResource.textPengaturan,
                      style: FontsStyle.textButtonOnboarding,
                    ),
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    ListWidget(
                      function: () =>
                          Navigator.pushNamed(context, RoutesName.profileEdit),
                      prefixWidget: const Icon(
                        Icons.person,
                        size: SizeResource.iconSize,
                      ),
                      title: StringResource.textDataPropfile,
                      desc: StringResource.textDescDataPropfile,
                      suffix: const Icon(
                        Icons.navigate_next_outlined,
                        size: SizeResource.iconSize,
                      ),
                    ),
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    ListWidget(
                      function: () {},
                      prefixWidget: const Icon(
                        Icons.wallet_membership_rounded,
                        size: SizeResource.iconSize,
                      ),
                      title: StringResource.textDataPembayaran,
                      desc: StringResource.textDescDataPembayaran,
                      suffix: const Icon(
                        Icons.navigate_next_outlined,
                        size: SizeResource.iconSize,
                      ),
                    ),
                    const SizedBox(
                      height: SizeResource.marginM,
                    ),
                    TextWidget(
                      text: StringResource.textBantuan,
                      style: FontsStyle.textButtonOnboarding,
                    ),
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    ListWidget(
                      function: () {
                        Navigator.pushNamed(context, RoutesName.faqPage);
                      },
                      prefixWidget: const Icon(
                        Icons.help_outline,
                        size: SizeResource.iconSize,
                      ),
                      title: StringResource.textFaq,
                    ),
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    ListWidget(
                      function: () {},
                      prefixWidget: const Icon(
                        Icons.email,
                        size: SizeResource.iconSize,
                      ),
                      title: StringResource.textContactUs,
                    ),
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    ListWidget(
                      function: () {
                        Navigator.pushNamed(context, RoutesName.resultPage);
                      },
                      prefixWidget: const Icon(
                        Icons.star,
                        size: SizeResource.iconSize,
                      ),
                      title: StringResource.textGiveRate,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: BlocConsumer<BlocSingout, BlocSignoutState>(
                        builder: (context, state) {
                          if (state is BlocSignoutStateLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return TextButton(
                              onPressed: () {
                                context.read<BlocSingout>().userLogout();
                              },
                              child: TextWidget(
                                text: StringResource.textLogout,
                                style: FontsStyle.textButtonOnboarding
                                    .copyWith(color: MyColors.red),
                              ));
                        },
                        listener: (context, state) {
                          if (state is BlocSignoutStateError) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text(state.error)));
                          }
                          if (state is BlocSignoutStateSuccess) {
                            Navigator.pushNamedAndRemoveUntil(
                                context, RoutesName.login, (route) => false);
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          );

  }
}
