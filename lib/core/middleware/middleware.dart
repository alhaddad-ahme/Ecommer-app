import 'package:ecommeries_app/core/constant/routes.dart';
import 'package:ecommeries_app/core/constant/strings.dart';
import 'package:ecommeries_app/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware{

@override
  int? priority = 0;

 MyServices myServices=Get.find();
  @override
  RouteSettings? redirect(String? route)  {
    if(myServices.sharedPre.getBool(AppStrings.IsShownBoardingStore)== true){
      return RouteSettings(name: AppRoute.login);
    }
  }



}