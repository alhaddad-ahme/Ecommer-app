import 'package:ecommeries_app/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPass();
}

class LoginControllerImp extends LoginController {
  late TextEditingController emailTextController;
  late TextEditingController passwordTextController;

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool obscureText=true;

  @override
  void onInit() {
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    super.onInit();
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUP);
  }

  @override
  goToForgetPass() {
    Get.toNamed(AppRoute.forgetPass);
  }
 
  @override
  login() {
    if (formState.currentState!.validate()) {
    Get.offNamed(AppRoute.successSignUp);
    // Get.delete<LoginControllerImp>();
    } 
    // else {
    //   print(" not valid");
    // }
  }

 showPassword(){
  obscureText = obscureText ? false:true;
  update();
 }

}
