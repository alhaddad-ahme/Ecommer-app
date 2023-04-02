import 'package:ecommeries_app/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goToHome();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  goToHome() {
    Get.toNamed(AppRoute.login);
  }
}
