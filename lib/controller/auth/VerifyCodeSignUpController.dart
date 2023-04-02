import 'package:ecommeries_app/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  goToSuccessSignUp() {
    Get.toNamed(AppRoute.successSignUp);
  }
}
