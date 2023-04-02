import 'package:ecommeries_app/controller/localController.dart';
import 'package:ecommeries_app/core/constant/colors.dart';
import 'package:ecommeries_app/core/constant/routes.dart';
import 'package:ecommeries_app/core/constant/strings.dart';
import 'package:ecommeries_app/view/widgets/gloabl/appButtonGlobal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LanguageScreen extends GetView<LocalController> {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Language',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              ' !! chose Language ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, color: Colors.blue),
            ),
            AppButtonGlobal(onPressed: () {
              controller.choseLocal(AppStrings.langCodeArabic);
              Get.offNamed(AppRoute.onBoarding);
            }, textButton: "Arabia"),
            AppButtonGlobal(onPressed: () {
              controller.choseLocal(AppStrings.langCodeEnglish);
              Get.offNamed(AppRoute.onBoarding);
            }, textButton: "English")
          ],
        ),
      ),
    );
  }
}
