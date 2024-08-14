import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constent/routes.dart';
import 'package:untitled1/core/functions/handlingdatacontroller.dart';
import 'package:untitled1/data/data%20source/remote/auth/signup.dart';

import '../../core/class/statusrequest.dart';

abstract class SignUpController extends GetxController {
  signUp();

  goToSignIn();
// SignupData signupData = SignupData(Get.find());
//
// List data = [];
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController name;

  late TextEditingController email;

  late TextEditingController mobile;

  late TextEditingController password;

  var formdata;
  StatusRequest? statusRequest;

  SignupData signupData = SignupData(Get.find());

  List data = [];

  @override
  void onInit() {
    name = TextEditingController();
    email = TextEditingController();
    mobile = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  signUp() async {
    statusRequest = StatusRequest.loading;
    var response = await signupData.postData(
        name.text, email.text, mobile.text, password.text);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        //data.addAll(response['data']);
        Get.offNamed(AppRoute.logIn);
        //***************************************************************
        //*** بعد ما يتسجل الحساب بال Data Base ما عم ينتقل ع صفحة ال Login ***
      } else {
        Get.defaultDialog(
            title: "Worning",
            middleText: "Phone Number Or Email Already Exists");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  signUp1() async {
    print("formdata");
    print(formdata);

    print("formdata.currentState");
    print(formdata.currentState);
     //****************************************************************
    //*** هذا التابع الاساسي ما عم يعمل ()validate على الحقول وقت استدعيه ***
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      var response = await signupData.postData(
          name.text, email.text, mobile.text, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          data.addAll(response['data']);
          Get.offNamed(AppRoute.veriFiyCodeSignUp);
        } else {
          Get.defaultDialog(
              title: "Worning",
              middleText: "Phone Number Or Email Already Exists");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  // @override
  // signUpB() async {
  //   var response = await signupData.postData(
  //       name.text, email.text, mobile.text, password.text);
  //   print(response);
  //   statusRequest = handlingData(response);
  //   if (StatusRequest.success == statusRequest) {
  //     if (response['status'] == "success") {
  //       data.addAll(response['data']);
  //       Get.offNamed(AppRoute.veriFiyCodeSignUp);
  //     } else {
  //       Get.defaultDialog(
  //           title: "Worning",
  //           middleText: "Phone Number Or Email Already Exists");
  //       statusRequest = StatusRequest.failure;
  //     }
  //   }
  //   update();
  // }

  @override
  goToSignIn() {
    Get.offAllNamed(AppRoute.logIn);
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    mobile.dispose();
    password.dispose();
    super.dispose();
  }
}
