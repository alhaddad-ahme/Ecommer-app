import 'package:ecommeries_app/binding.dart';
import 'package:ecommeries_app/core/constant/appTheam.dart';
import 'package:ecommeries_app/core/constant/routes.dart';
import 'package:ecommeries_app/core/localization/translate.dart';
import 'package:ecommeries_app/core/services/services.dart';
import 'package:ecommeries_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'controller/localController.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServeries();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
LocalController controller=Get.put(LocalController());

    return GetMaterialApp(
      translations: MyTranslate(),
      locale: controller.languge,
      theme: controller.themeData,
      title: 'E-commerces App',
      initialBinding: MyBinding(),
      getPages:routes,
    );
  }
}
