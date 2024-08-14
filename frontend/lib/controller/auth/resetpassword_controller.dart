import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constent/routes.dart';

abstract class ResetPasswordController extends GetxController{
  resetPassword();
  goToSuccessResetPassword();
}
class ResetPasswordControllerImp extends ResetPasswordController{

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController password ;
  late TextEditingController rePassword ;

  @override
  resetPassword() {
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      print("Valid");
      goToSuccessResetPassword();
    }else{
      print("Not Valid");
    }
  }

  @override
  goToSuccessResetPassword(){
    Get.offAllNamed(AppRoute.successResetPassword);
  }
  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }



}




