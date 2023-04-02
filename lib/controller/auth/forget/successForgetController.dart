import 'package:ecommeries_app/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SuccessForgetPassController extends GetxController {
  goToHome();
}

class SuccessForgetPassControllerImp extends SuccessForgetPassController {

  @override
  void onInit() {
    super.onInit();
  }

  @override
  goToHome() {
    Get.toNamed(AppRoute.login);
  }
}
