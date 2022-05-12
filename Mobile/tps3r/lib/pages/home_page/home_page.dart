import 'package:flutter/material.dart';
import 'package:tps3r/widgets/widget_large/chat_widget/chat_widget.dart';
import 'package:tps3r/widgets/widget_medium/bottom_nav_bar/bottom_nav_widget.dart';
import 'package:tps3r/widgets/widget_medium/header/header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ChatWidget(typeHeader: 'chat'),
        ),
      ),
      bottomNavigationBar: ButtonNavWidget(),
    );
  }
}
