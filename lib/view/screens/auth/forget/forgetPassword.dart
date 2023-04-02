import 'package:ecommeries_app/controller/auth/forget/forgetPassController.dart';
import 'package:ecommeries_app/core/constant/colors.dart';
import 'package:ecommeries_app/view/widgets/auth/customButtonAuth.dart';
import 'package:ecommeries_app/view/widgets/auth/customLogoAuth.dart';
import 'package:ecommeries_app/view/widgets/auth/customTextFormFieldAuth.dart';
import 'package:ecommeries_app/view/widgets/auth/customTextSignUpOrSignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/loginController.dart';
import '../../../../core/function/validatInput.dart';
import '../../../widgets/auth/customTextBodyAuth.dart';
import '../../../widgets/auth/customTextTitleAuth.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPassControllerImp controller = Get.put(ForgetPassControllerImp());
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
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextTitleAuth(text: 'Check Email '),
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
                        return validateInput(val!, 5, 100, 'email');
                      },
                      myController: controller.checkEmailTextController,
                      hintText: 'Enter Your Email',
                      labelText: 'Email',
                      iconData: Icons.email
                      // myController: myController,
                      // myValidator: myValidator
                      ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButtonAuth(
                    textButton: 'Check',
                    onPressed: () {
                      controller.goToVerify();
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
