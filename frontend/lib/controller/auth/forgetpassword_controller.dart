import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constent/routes.dart';

abstract class ForgetPasswordController extends GetxController{
  checkEmail();
  goToVerfiyCode();
}
class ForgetPasswordControllerImp extends ForgetPasswordController{

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email ;

  @override
  checkEmail() {
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      print("Valid");
      goToVerfiyCode();
    }else{
      print("Not Valid");
    }
  }

  @override
  goToVerfiyCode(){
    Get.offAllNamed(AppRoute.veriFiyCode);
  }
  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}




