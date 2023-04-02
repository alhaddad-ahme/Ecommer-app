import 'package:ecommeries_app/core/constant/colors.dart';
import 'package:ecommeries_app/core/constant/strings.dart';
import 'package:flutter/material.dart';

ThemeData themEnglish = ThemeData(
  fontFamily: AppStrings.fontAref,
  primaryColor: AppColor.blue,
  textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 20,
      ),
      bodyText1: TextStyle(
        fontSize: 20,
      )),
);

ThemeData themArabic = ThemeData(
  fontFamily: AppStrings.fontCairo,
  primaryColor: AppColor.blue,
  textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 20,
      ),
      bodyText1: TextStyle(
        fontSize: 20,
      )),
);
