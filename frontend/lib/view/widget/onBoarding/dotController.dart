import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:untitled1/controller/onBoarding_controller.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/data/data%20source/static/static.dart';

class DotControllerOnBoarding extends StatelessWidget {
  const DotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<OnBoardingControllerIm>(builder: (controller)=>Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onBoardingList.length, (index) => AnimatedContainer(
          margin: const EdgeInsets.only(right: 5),
          duration: const Duration(microseconds: 900),
          width: controller.currentPage == index ? 20 : 5,
          height: 6,
          decoration: BoxDecoration(
            color: AppColor.primarycolor,
            borderRadius: BorderRadius.circular(30),
          ),
        ))
      ],
    ));
  }
}
