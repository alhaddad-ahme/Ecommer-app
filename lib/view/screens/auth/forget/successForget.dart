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
import '../../../widgets/auth/customTextBodyAuth.dart';
import '../../../widgets/auth/customTextTitleAuth.dart';

class SuccessForgetScreen extends StatelessWidget {
  const SuccessForgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessForgetPassControllerImp controller =
        Get.put(SuccessForgetPassControllerImp());
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
                  SizedBox(
                    height: 20,
                  ),
                  Icon(Icons.check_circle_outline_sharp,
                      size: 180, color: AppColor.blue),
                  CustomTextTitleAuth(text: 'Success Re password For You'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextBodyAuth(
                      text:
                          'Sign in with your Email or phone to Enter  my Application and enjoin in all serves'),
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  CustomButtonAuth(
                    textButton: 'Go To Login',
                    onPressed: () {
                      controller.goToHome();
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
