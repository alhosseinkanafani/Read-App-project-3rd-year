import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constent/routes.dart';
import 'package:untitled1/core/functions/handlingdatacontroller.dart';
import 'package:untitled1/data/data%20source/remote/auth/verifiycode_signup.dart';

import '../../core/class/statusrequest.dart';

abstract class VeriFiyCodeSignUpController extends GetxController{
  checkEmail();
  goToSuccessSignUp();
}
class VeriFiyCodeSignUpControllerImp extends VeriFiyCodeSignUpController{

  //VerifiyCodeSignupData verifiyCodeSignupData = VerifiyCodeSignupData(Get.find());

  late String verifiycode ;
  //StatusRequest? statusRequest ;
  String? email ;

  @override
  checkEmail() {

  }

  @override
  goToSuccessSignUp(){
    Get.offAllNamed(AppRoute.successSignUp);
  }
  @override
  void onInit() {
    //email = Get.arguments['email'];
    super.onInit();
  }
  @override
  void dispose() {
    super.dispose();
  }
}




