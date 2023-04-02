import 'dart:ui';

import 'package:ecommeries_app/core/constant/appTheam.dart';
import 'package:ecommeries_app/core/constant/strings.dart';
import 'package:ecommeries_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalController extends GetxController{

Locale? languge;

MyServices myServices=Get.find();

ThemeData themeData=themArabic;
choseLocal(String langCode){
  Locale locale=Locale(langCode);
  myServices.sharedPre.setString(AppStrings.IsShownBoardingStore, langCode);
  themeData= langCode == AppStrings.langCodeArabic ?themArabic : themEnglish;
  Get.changeTheme(themeData);
  Get.updateLocale(locale);

}
@override
  void onInit() {
    // if(lang==)
    String? langShardPre=myServices.sharedPre.getString(AppStrings.langCodeStore).toString();
    if(langShardPre==AppStrings.langCodeArabic){
      languge=  Locale(AppStrings.langCodeArabic);
       themeData= themArabic;
    }
    else if(langShardPre==AppStrings.langCodeEnglish) {
      languge=  Locale(AppStrings.langCodeEnglish);
       themeData= themEnglish;

    }
    else{
      languge=  Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}