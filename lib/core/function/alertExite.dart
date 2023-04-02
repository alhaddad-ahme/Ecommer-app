import 'dart:io';

import 'package:ecommeries_app/core/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: AppStrings.titleDialogExitApp ,
      middleText: AppStrings.messageDialogExitApp,
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: Text('yes')),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text('no')),
      ]);

  return Future.value(false);
}
