import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ourcochin/core/constants/colors.dart';

class TextStyles {
  static signupHeadding({double? size, FontWeight? weight, Color? color}) {
    return GoogleFonts.montserrat(color: ColorTheme.white, fontSize: 20);
  }

  static registarionTexts({double? size, FontWeight? weight, Color? color}) {
    return GoogleFonts.montserrat(color: ColorTheme.white, fontSize: 15);
  }
}
