import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../controller/auth/forget/resetPasswordController.dart';
import '../../../../core/function/validatInput.dart';
import '../../../widgets/auth/customButtonAuth.dart';
import '../../../widgets/auth/customLogoAuth.dart';
import '../../../widgets/auth/customTextBodyAuth.dart';
import '../../../widgets/auth/customTextFormFieldAuth.dart';
import '../../../widgets/auth/customTextTitleAuth.dart';

class RestPassScreen extends StatelessWidget {
  const RestPassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ReSetPasswordControllerImp controller =
        Get.put(ReSetPasswordControllerImp());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Forget Password ',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomLogoAuth(),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextTitleAuth(text: 'Welcome Back '),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextBodyAuth(
                      text:
                          'Sign in with your Email or phone to Enter  my Application and enjoin in all serves'),
                  SizedBox(
                    height: 60,
                  ),
                  CustomTextFormFieldAuth(
                    isNumber: false,

                    myValidator: (val) {
                      return validateInput(val!, 8, 100, 'password');
                    },
                    myController: controller.passwordTextController,
                    hintText: 'Enter Password',
                    labelText: 'Password',
                    iconData: Icons.password_rounded,
                    // myController: myController,
                    // myValidator: myValidator
                  ),
                  CustomTextFormFieldAuth(
                    isNumber: false,

                    myValidator: (val) {
                      return validateInput(val!, 8, 100, 'password');
                    },
                    myController: controller.rePasswordTextController,
                    hintText: 'Re Enter Password',
                    labelText: ' Re Password',
                    iconData: Icons.password_rounded,
                    // myController: myController,
                    // myValidator: myValidator
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButtonAuth(
                    textButton: 'Check Email',
                    onPressed: () {
                      controller.goToSuccessForgetPass();
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
