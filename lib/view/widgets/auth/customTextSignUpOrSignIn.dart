import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../core/constant/colors.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String textQuestion;
  final String textAddress;
  final void Function() onTap;
  const CustomTextSignUpOrSignIn({Key? key, required this.textQuestion, required this.textAddress,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textQuestion),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            textAddress,
            style: const TextStyle(color: AppColor.blue),
          ),
        ),
      ],
    );
  }
}
