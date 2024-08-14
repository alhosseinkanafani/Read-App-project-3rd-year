import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/auth/login_controller.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/core/functions/alertexitapp.dart';
import 'package:untitled1/core/functions/validinput.dart';
import 'package:untitled1/view/widget/auth/custombuttonauth.dart';
import 'package:untitled1/view/widget/auth/customtextbodyauth.dart';
import 'package:untitled1/view/widget/auth/customtextsignupauth.dart';
import 'package:untitled1/view/widget/auth/customtexttitleauth.dart';
import 'package:untitled1/view/widget/auth/cutomtextformauth.dart';
import 'package:untitled1/view/widget/auth/logoauth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
        backgroundColor: AppColor.background,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.background,
          elevation: 0.0,
          title: Text("15".tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: GetBuilder<LoginControllerImp>(
          builder: (controller) => WillPopScope(
            onWillPop: alertExitApp,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const LogoAuth(),
                    CustomTextTitleAuth(text: "8".tr),
                    const SizedBox(height: 15),
                    CustomTextBodyAuth(text: "9".tr),
                    const SizedBox(height: 65),
                    CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 15, "email");
                      },
                      hinttext: "10".tr,
                      iconData: Icons.email_outlined,
                      labeltext: "11".tr,
                      mycontroller: controller.email,
                    ),
                    // const SizedBox(height: 40),
                    GetBuilder<LoginControllerImp>(builder: (controller)=> CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 8, 25, "password");
                      },
                      obscureText: controller.isshowpassword,
                      onTapIcon: (){
                        controller.showPassword();
                      },
                      hinttext: "12".tr,
                      iconData: Icons.lock_outlined,
                      labeltext: "13".tr,
                      mycontroller: controller.password,
                    ),),
                    InkWell(
                      onTap: () {
                        controller.goToForgetPassword();
                      },
                      child: Text("14".tr,
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    const SizedBox(height: 4),
                    CustomButtonAuth(
                      text: "15".tr,
                      onPressed: () {
                        controller.login();
                      },
                    ),
                    const SizedBox(height: 10),
                    CustomTextSignupOrSignIn(
                      textone: "16".tr,
                      texttwo: "17".tr,
                      onTap: () {
                        controller.goToSignUp();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
