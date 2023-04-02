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
import '../../../widgets/auth/customTextBodyAuth.dart';
import '../../../widgets/auth/customTextTitleAuth.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyCodeForgetScreen extends StatelessWidget {
  const VerifyCodeForgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeForgetControllerImp controller =
        Get.put(VerifyCodeForgetControllerImp());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Verify Code ',
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
                  CustomTextTitleAuth(text: 'Code'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextBodyAuth(
                      text:
                          'Sign in with your Email or phone to Enter  my Application and enjoin in all serves'),
                  SizedBox(
                    height: 60,
                  ),
                  OtpTextField(
                    fieldWidth: 50,

                    borderRadius: BorderRadius.circular(15),
                    numberOfFields: 5,
                    borderColor: AppColor.blue,
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      controller.goToRePass();
                    }, // end onSubmit
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
