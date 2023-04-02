import 'package:ecommeries_app/controller/auth/forget/forgetPassController.dart';
import 'package:ecommeries_app/controller/auth/forget/successForgetController.dart';
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
import '../../../controller/auth/successSignUpController.dart';
import '../../widgets/auth/customTextBodyAuth.dart';
import '../../widgets/auth/customTextTitleAuth.dart';

class SuccessSignUpScreen extends StatelessWidget {
  const SuccessSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Success Check Password',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(Icons.check_circle_outline_sharp,
                      size: 180, color: AppColor.blue),
                  const CustomTextTitleAuth(text: 'Success Sign In'),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextBodyAuth(
                      text:
                          'Sign in with your Email or phone to Enter  my Application and enjoin in all serves'),
                 const SizedBox(
                    height: 60,
                  ),
                const  SizedBox(
                    height: 60,
                  ),
                  CustomButtonAuth(
                    textButton: 'Go To Login',
                    onPressed: () {
                      controller.goToHome();
                    },
                  ),
                const  SizedBox(
                    height: 30,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
