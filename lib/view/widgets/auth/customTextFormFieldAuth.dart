import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextFormFieldAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController myController;
  final String? Function(String?) myValidator;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapShowPassword;
  const CustomTextFormFieldAuth({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.iconData,
    required this.myController,
    required this.myValidator,
    required this.isNumber,
    this.obscureText,
    this.onTapShowPassword
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: obscureText==null || obscureText ==false? false :true ,
        keyboardType: isNumber ? TextInputType.phone : TextInputType.text,
        controller: myController,
        validator: myValidator,
        decoration: InputDecoration(
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(labelText),
          ),
          suffixIcon: InkWell(
            onTap: onTapShowPassword ,
            child: Icon(iconData)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
