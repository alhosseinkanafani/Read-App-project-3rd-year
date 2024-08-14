import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constent/routes.dart';

abstract class VeriFiyCodeController extends GetxController{
  checkEmail();
  goToResetPassword();
}
class VeriFiyCodeControllerImp extends VeriFiyCodeController{

  late String verifiycode ;

  @override
  checkEmail() {

  }

  @override
  goToResetPassword(){
    Get.offAllNamed(AppRoute.resetPassword);
  }
  @override
  void onInit() {
    super.onInit();
  }
  @override
  void dispose() {
    super.dispose();
  }
}




