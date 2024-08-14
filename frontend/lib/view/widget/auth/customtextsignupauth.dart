import 'package:flutter/material.dart';
import 'package:untitled1/core/constent/color.dart';

class CustomTextSignupOrSignIn extends StatelessWidget {
  final String textone;

  final String texttwo;

  final void Function() onTap;

  const CustomTextSignupOrSignIn(
      {super.key,
      required this.textone,
      required this.texttwo,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(textone),
      InkWell(
          onTap: onTap,
          child: Text(texttwo,
              style: const TextStyle(
                color: AppColor.primarycolor,
                fontWeight: FontWeight.bold,
              ))),
    ]);
  }
}
