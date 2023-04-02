import 'package:ecommeries_app/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController userNameTextController;
  late TextEditingController emailTextController;
  late TextEditingController phoneNumberTextController;
  late TextEditingController passwordTextController;
  GlobalKey<FormState> formStateSignUp = GlobalKey<FormState>();

  @override
  void onInit() {
    userNameTextController = TextEditingController();
    emailTextController = TextEditingController();
    phoneNumberTextController = TextEditingController();
    passwordTextController = TextEditingController();
    super.onInit();
  }

  @override
  goToLogin() {
    Get.toNamed(AppRoute.login);
  }

  @override
  signUp() {
    if (formStateSignUp.currentState!.validate()) {
      Get.offNamed(AppRoute.verifyCodeSignUp);
      
    } 
  }
}
