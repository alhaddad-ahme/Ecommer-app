import 'dart:ffi';

import 'package:ecommeries_app/core/constant/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/constant/routes.dart';
import '../core/services/services.dart';
import '../data/dataSource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController;
  MyServices myServices=Get.find();
  @override
  next() {
    if (currentPage == onBoardingList.length - 1) {
      myServices.sharedPre.setBool(AppStrings.IsShownBoardingStore, true);
      Get.offAllNamed(AppRoute.login);
    } else {
      currentPage++;
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 90), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
