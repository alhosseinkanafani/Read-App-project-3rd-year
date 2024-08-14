import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/controller/onBoarding_controller.dart';
import 'package:untitled1/data/data%20source/static/static.dart';
import 'package:untitled1/view/widget/onBoarding/custombutton.dart';
import 'package:untitled1/view/widget/onBoarding/customslider.dart';
import 'package:untitled1/view/widget/onBoarding/dotController.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerIm());
    return const Scaffold(
      backgroundColor: AppColor.background,
        body: SafeArea(
      child: Column(children: [
        Expanded(
          flex: 3,
            child: CustomSliderOnBoarding(),),
         Expanded(
          flex: 1,
            child: Column(
              children: [
              DotControllerOnBoarding(),
                Spacer(flex: 2),
                CustomButtonOnBoarding(),
              ],))
      ],)
    ));
  }
}
