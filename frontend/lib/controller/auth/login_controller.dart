import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constent/routes.dart';

abstract class LoginController extends GetxController{
    login();
    goToSignUp();
    goToForgetPassword();
}
class LoginControllerImp extends LoginController{

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email ;
  late TextEditingController password ;

  bool isshowpassword = true ;

  showPassword(){
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() {
   var formdata = formstate.currentState;
   if(formdata!.validate()){
     print("Valid");
     Get.offNamed(AppRoute.homescreen);
   }else{
     print("Not Valid");
   }
  }
  
  @override
  goToSignUp(){
   Get.offNamed(AppRoute.signUp);
  }
  @override
  void onInit() {
   email = TextEditingController();
   password = TextEditingController();
   super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}




