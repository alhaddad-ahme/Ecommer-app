import 'package:ecommeries_app/controller/auth/signUpController.dart';
import 'package:ecommeries_app/core/constant/colors.dart';
import 'package:ecommeries_app/core/function/alertExite.dart';
import 'package:ecommeries_app/view/widgets/auth/customButtonAuth.dart';
import 'package:ecommeries_app/view/widgets/auth/customLogoAuth.dart';
import 'package:ecommeries_app/view/widgets/auth/customTextFormFieldAuth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/function/validatInput.dart';
import '../../widgets/auth/customTextBodyAuth.dart';
import '../../widgets/auth/customTextTitleAuth.dart';

class SignUpAuthScreen extends StatelessWidget {
  const SignUpAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              'Sign Up ',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ),
          body:WillPopScope(
            onWillPop: alertExitApp,
            child: 
           GetBuilder<SignUpControllerImp>(
            builder: (_controller) => SingleChildScrollView(
              child: Form(
                key: _controller.formStateSignUp,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextTitleAuth(text: 'Welcome Back '),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextBodyAuth(
                            text:
                                'Sign Up  with your Email or phone to Enter  my Application and enjoin in all serves'),
                        SizedBox(
                          height: 60,
                        ),
                        CustomTextFormFieldAuth(
                          isNumber: false,
                          myValidator: (val) {
                            return validateInput(val!, 3, 50, 'userName');
                          },
                          myController: _controller.userNameTextController,
                          hintText: 'Enter Your Name',
                          labelText: 'Name',
                          iconData: Icons.person,
                          // myController: myController,
                          // myValidator: myValidator
                        ),
                        CustomTextFormFieldAuth(
                            isNumber: false,
                            myValidator: (val) {
                              return validateInput(val!, 5, 100, 'email');
                            },
                            myController: _controller.emailTextController,
                            hintText: 'Enter Your Email',
                            labelText: 'Email',
                            iconData: Icons.email
                            // myController: myController,
                            // myValidator: myValidator
                            ),
                        CustomTextFormFieldAuth(
                            isNumber: true,
                            myValidator: (val) {
                              return validateInput(val!, 8, 14, 'phone');
                            },
                            myController: _controller.phoneNumberTextController,
                            hintText: 'Enter Your Phone Number ',
                            labelText: ' Phone Number',
                            iconData: Icons.phone
                            // myController: myController,
                            // myValidator: myValidator
                            ),
                        CustomTextFormFieldAuth(
                            isNumber: false,
                            myValidator: (val) {
                              return validateInput(val!, 8, 20, 'password');
                            },
                            myController: _controller.passwordTextController,
                            hintText: 'Enter Your Password',
                            labelText: 'Password',
                            iconData: Icons.password
                            // myController: myController,
                            // myValidator: myValidator
                            ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomButtonAuth(
                          textButton: 'Sign Up',
                          onPressed: () {
                            _controller.signUp();
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Do you  have  an account ?"),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: (() {
                                _controller.goToLogin();
                              }),
                              child: Text(
                                "Sgin In",
                                style: TextStyle(color: AppColor.blue),
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ),
          )),
     
            )
          
    );
  }
}
