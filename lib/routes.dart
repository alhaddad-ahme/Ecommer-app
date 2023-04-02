import 'package:ecommeries_app/controller/onBoardingController.dart';
import 'package:ecommeries_app/core/constant/routes.dart';
import 'package:ecommeries_app/core/middleware/middleware.dart';
import 'package:ecommeries_app/view/screens/auth/VerifyCodeSignUpScreen.dart';
import 'package:ecommeries_app/view/screens/auth/forget/forgetPassword.dart';
import 'package:ecommeries_app/view/screens/auth/forget/successForget.dart';
import 'package:ecommeries_app/view/screens/auth/login.dart';
import 'package:ecommeries_app/view/screens/auth/forget/restPassword.dart';
import 'package:ecommeries_app/view/screens/auth/signUp.dart';
import 'package:ecommeries_app/view/screens/auth/forget/verifyCodeForget.dart';
import 'package:ecommeries_app/view/screens/auth/successSignUp.dart';
import 'package:ecommeries_app/view/screens/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'view/screens/onBoardingScreen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: '/',
      page: () => const LanguageScreen(),
      middlewares: [MyMiddleware()]),
  GetPage(name: AppRoute.login, page: () => const LoginAuthScreen()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoardingScreen()),
  GetPage(name: AppRoute.signUP, page: () => const SignUpAuthScreen()),
  GetPage(name: AppRoute.forgetPass, page: () => const ForgetPasswordScreen()),
  GetPage(
      name: AppRoute.verifyCodeForget,
      page: () => const VerifyCodeForgetScreen()),
  GetPage(
      name: AppRoute.verifyCodeSignUp,
      page: () => const VerifyCodeSignUpScreen()),
  GetPage(name: AppRoute.restPass, page: () => const RestPassScreen()),
  GetPage(
      name: AppRoute.successForgetPass,
      page: () => const SuccessForgetScreen()),
  GetPage(
      name: AppRoute.successSignUp, page: () => const SuccessSignUpScreen()),
];
