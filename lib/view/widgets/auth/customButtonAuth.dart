import 'package:ecommeries_app/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButtonAuth extends StatelessWidget {
  final void Function()? onPressed;
  final String textButton;
  const CustomButtonAuth(
      {Key? key, required this.onPressed, required this.textButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: onPressed,
        textColor: AppColor.white,
        color: AppColor.blue,
        child: Text(textButton),
      ),
    );
  }
}
