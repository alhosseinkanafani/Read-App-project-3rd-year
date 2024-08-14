import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:untitled1/core/constent/routes.dart';
import 'package:untitled1/core/services/services.dart';
import 'package:untitled1/data/data%20source/static/static.dart';

import 'onBoarding_controller.dart';

abstract class OnBoardingController extends GetxController{
  next();
  onPageChanged(int index);
}


class OnBoardingControllerIm extends OnBoardingController {

  late PageController pageController;

  int currentPage = 0;

  MyServices myServices = Get.find();

  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1){
     myServices.sharedPreferences.setString("onboarding", "1");
     Get.offAllNamed(AppRoute.logIn);

    }
else{
      pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }

  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

}
