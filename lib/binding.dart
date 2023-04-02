import 'package:ecommeries_app/controller/auth/signUpController.dart';
import 'package:get/get.dart';

import 'controller/auth/loginController.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
     Get.lazyPut(()=>LoginControllerImp(), fenix: true);
     Get.lazyPut(()=>SignUpControllerImp(),  );

  }
  
}