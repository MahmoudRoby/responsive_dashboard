import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyle {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
        color: const Color(0xff064061),
        fontFamily: 'Montserrat',
        fontSize: getResposeFontSize(context, 16),
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
        color: const Color(0xffAAAAAA),
        fontFamily: 'Montserrat',
        fontSize: getResposeFontSize(context, 12),
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
        color: const Color(0xffAAAAAA),
        fontFamily: 'Montserrat',
        fontSize: getResposeFontSize(context, 14),
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
        color: const Color(0xff064061),
        fontFamily: 'Montserrat',
        fontSize: getResposeFontSize(context, 16),
        fontWeight: FontWeight.w500);
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
        color: const Color(0xffffffff),
        fontFamily: 'Montserrat',
        fontSize: getResposeFontSize(context, 20),
        fontWeight: FontWeight.w500);
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
        color: const Color(0xff064061),
        fontFamily: 'Montserrat',
        fontSize: getResposeFontSize(context, 16),
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
        color: const Color(0xff4EB7F2),
        fontFamily: 'Montserrat',
        fontSize: getResposeFontSize(context, 18),
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
        color: const Color(0xff4EB7F2),
        fontFamily: 'Montserrat',
        fontSize: getResposeFontSize(context, 24),
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
        color: const Color(0xff064061),
        fontFamily: 'Montserrat',
        fontSize: getResposeFontSize(context, 20),
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
        color: const Color(0xff4EB7F2),
        fontFamily: 'Montserrat',
        fontSize: getResposeFontSize(context, 16),
        fontWeight: FontWeight.w700);
  }
}

double getResposeFontSize(context, double fontSize) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fontSize;
  return responsiveFontSize.clamp(fontSize * .8, fontSize * 1.2);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}

double getScaleFactorWithOutMediaQuery() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var deviceRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / deviceRatio;

  if (width < SizeConfig.tablet) {
    return width / 400;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}

double getResponsiveFontSizeWithOutMediaQuery(double fontSize) {
  double scaleFactor = getScaleFactorWithOutMediaQuery();
  double reponsiveFontSizeWithOutMediaQuery = scaleFactor * fontSize;
  return reponsiveFontSizeWithOutMediaQuery.clamp(
      fontSize * .8, fontSize * 1.2);
}
