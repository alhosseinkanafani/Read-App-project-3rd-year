import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/controller/onBoarding_controller.dart';
import 'package:untitled1/data/data%20source/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerIm> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  PageView.builder(
      controller: controller.pageController,
        onPageChanged: (val){
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(children: [
          const SizedBox(height: 50),
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 80),
          Image.asset
            (onBoardingList[i].image!,
            width: 180,
            //height: 230,
            height: Get.width / 1.5 ,
            alignment: Alignment.bottomCenter,
            fit: BoxFit.fill,),
          const SizedBox(height: 60),
          Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].body!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  height: 2,
                  color: AppColor.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              )),
        ])
    );
  }
}
