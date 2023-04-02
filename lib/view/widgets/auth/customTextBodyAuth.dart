import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String text;

  const CustomTextBodyAuth({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(text
             ,
              style:const TextStyle(fontSize: 16),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
            );
  }
}