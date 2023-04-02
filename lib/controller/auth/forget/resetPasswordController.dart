import 'package:ecommeries_app/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ReSetPasswordController extends GetxController {
  goToSuccessForgetPass();
}

class ReSetPasswordControllerImp extends ReSetPasswordController {
  late TextEditingController passwordTextController;
  late TextEditingController rePasswordTextController;

  @override
  void onInit() {
    passwordTextController = TextEditingController();
    rePasswordTextController = TextEditingController();
    super.onInit();
  }

  @override
  goToSuccessForgetPass() {
    Get.toNamed(AppRoute.successForgetPass);
  }
}
