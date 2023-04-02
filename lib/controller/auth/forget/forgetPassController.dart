import 'package:ecommeries_app/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPassController extends GetxController {
  goToVerify();
}

class ForgetPassControllerImp extends ForgetPassController {
  late TextEditingController checkEmailTextController;

  @override
  void onInit() {
    checkEmailTextController = TextEditingController();
    super.onInit();
  }

  @override
  goToVerify() {
    Get.toNamed(AppRoute.verifyCodeForget);
  }
}
