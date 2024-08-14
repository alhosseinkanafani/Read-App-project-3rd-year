
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/onBoarding_controller.dart';
import 'package:untitled1/core/constent/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerIm> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 40),
      height: 50,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 2),
        onPressed: (){
          controller.next();
        },
        color: AppColor.primarycolor,
        textColor: AppColor.background,
        child:  Text("40".tr,
          style: const TextStyle(
              fontWeight: FontWeight.bold),
        ),
      ),);
  }
}
