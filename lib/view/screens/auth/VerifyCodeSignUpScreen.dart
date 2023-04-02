import 'package:ecommeries_app/controller/auth/VerifyCodeSignUpController.dart';
import 'package:ecommeries_app/controller/auth/forget/verifyCodeForgetController.dart';
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
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../widgets/auth/customTextBodyAuth.dart';
import '../../widgets/auth/customTextTitleAuth.dart';

class VerifyCodeSignUpScreen extends StatelessWidget {
  const VerifyCodeSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp controller =
        Get.put(VerifyCodeSignUpControllerImp());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Verify Code Sign Up',
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
                  const CustomTextTitleAuth(text: 'Code'),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextBodyAuth(
                      text:
                          'Sign in with your Email or phone to Enter  my Application and enjoin in all serves'),
                  const SizedBox(
                    height: 60,
                  ),
                  OtpTextField(
                    fieldWidth: 50,

                    borderRadius: BorderRadius.circular(15),
                    numberOfFields: 5,
                    borderColor: AppColor.blue,
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {},
                    onSubmit: (String verificationCode) {
                      controller.goToSuccessSignUp();
                    }, // end onSubmit
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
