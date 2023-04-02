 import 'package:get/get.dart';

validateInput(String val ,int min ,int max, String type){
   
   if(type=="userName"){

    if(!GetUtils.isUsername(val)){
      return 'is not user name';
   }
   }

    if(type=="email"){
    print("email ==> ${GetUtils.isEmail(val)} => $val");
            if(!GetUtils.isEmail(val)){
        return 'is not valid Email';
       }
    }
     if(type=="phone"){
      
          if(!GetUtils.isPhoneNumber(val)){
              return 'is not Phone ';
          }
     }

   if(val.isEmpty){
      return 'is Empty';
   }

   if(val.length <= min){
      return ' Should be more $min letter';
   }
   if(val.length >= max){
      return ' Should be less $max letter';
   }


 }