import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tps3r/utils/colors/colors_style.dart';

class FontsStyle {
  // ignore: unused_field
  static TextStyle poppins = GoogleFonts.poppins();

  static TextStyle textMedium =
      FontsStyle.poppins.copyWith(fontSize: 16, fontWeight: FontWeight.w600);

  static TextStyle textTitleOnboarding = FontsStyle.poppins.copyWith(
      fontSize: 20, fontWeight: FontWeight.w800, color: MyColors.green);

  static TextStyle textBodyOnboarding = FontsStyle.poppins.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: MyColors.green,
  );

  static TextStyle textButtonOnboarding = FontsStyle.poppins.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: MyColors.green,
  );

  static TextStyle textSectionMenu = FontsStyle.poppins.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: MyColors.green,
  );

  static TextStyle textRegular =
      FontsStyle.poppins.copyWith(fontSize: 14, fontWeight: FontWeight.w400);

  static TextStyle textSmall =
      FontsStyle.poppins.copyWith(fontSize: 12, fontWeight: FontWeight.w300);

  static TextStyle textSmallBlack = FontsStyle.poppins.copyWith(
      fontSize: 12, fontWeight: FontWeight.w300, color: MyColors.black);

  static TextStyle sayHello =
      FontsStyle.poppins.copyWith(fontSize: 35, fontWeight: FontWeight.w700);
  static TextStyle textWhite = FontsStyle.poppins.copyWith(
      fontSize: 18,
      letterSpacing: 1.8,
      fontWeight: FontWeight.w700,
      color: MyColors.white);
}
