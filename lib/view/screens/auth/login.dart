import 'package:ecommeries_app/core/constant/colors.dart';
import 'package:ecommeries_app/core/function/alertExite.dart';
import 'package:ecommeries_app/core/function/validatInput.dart';
import 'package:ecommeries_app/view/widgets/auth/customButtonAuth.dart';
import 'package:ecommeries_app/view/widgets/auth/customLogoAuth.dart';
import 'package:ecommeries_app/view/widgets/auth/customTextFormFieldAuth.dart';
import 'package:ecommeries_app/view/widgets/auth/customTextSignUpOrSignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../controller/auth/loginController.dart';
import '../../widgets/auth/customTextBodyAuth.dart';
import '../../widgets/auth/customTextTitleAuth.dart';

class LoginAuthScreen extends StatelessWidget {
  const LoginAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // LoginControllerImp controller = Get.put(LoginControllerImp());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Sign in ',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ),
        body: WillPopScope(
          onWillPop:alertExitApp,
          child: GetBuilder<LoginControllerImp>(
          builder: (controller) => SingleChildScrollView(
            child: Form(
              key: controller.formState,
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
                          return validateInput(val!, 5, 100,'email');
                             
                        },
                        myController: controller.emailTextController,
                        hintText: 'Enter Your Email',
                        labelText: 'Email',
                        iconData: Icons.email_outlined,
                      ),
                      CustomTextFormFieldAuth(
                        obscureText: controller.obscureText,
                          onTapShowPassword: (){
                                  controller.showPassword();
                          },
                          isNumber: false,
                          myValidator: (val) {
                            return validateInput(val!, 8, 20, 'password');
                            
                          },
                          myController: controller.passwordTextController,
                          hintText: 'Enter Your Password',
                          labelText: 'Password',
                          iconData: Icons.password
                          // myController: myController,
                          // myValidator: myValidator
                          ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          controller.goToForgetPass();
                        },
                        child: Text(
                          'Forget Password',
                          textAlign: TextAlign.end,
                        ),
                      ),
                      CustomButtonAuth(
                        textButton: 'Sign in',
                        onPressed: () {
                          controller.login();
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomTextSignUpOrSignIn(
                        textQuestion: "Don't  have  an account ?",
                        textAddress: 'Sign Up',
                        onTap: () {
                          controller.goToSignUp();
                        },
                      ),
                    ]),
              ),
            ),
          ),
        ), )
      ),
    );
  }
}
