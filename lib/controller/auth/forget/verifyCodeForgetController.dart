import 'package:ecommeries_app/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodeForgetController extends GetxController {
  goToRePass();
}

class VerifyCodeForgetControllerImp extends VerifyCodeForgetController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  goToRePass() {
    Get.toNamed(AppRoute.restPass);
  }
}
