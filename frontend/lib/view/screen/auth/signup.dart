import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled1/controller/auth/signup_controller.dart';
import 'package:untitled1/core/class/statusrequest.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/core/constent/images_assets.dart';
import 'package:untitled1/core/functions/alertexitapp.dart';
import 'package:untitled1/core/functions/validinput.dart';
import 'package:untitled1/view/widget/auth/custombuttonauth.dart';
import 'package:untitled1/view/widget/auth/customtextbodyauth.dart';
import 'package:untitled1/view/widget/auth/customtextsignupauth.dart';
import 'package:untitled1/view/widget/auth/customtexttitleauth.dart';
import 'package:untitled1/view/widget/auth/cutomtextformauth.dart';
import 'package:untitled1/view/widget/auth/logoauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
        backgroundColor: AppColor.background,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.background,
          elevation: 0.0,
          title: Text("17".tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<SignUpControllerImp>(
              builder: (controller) => Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 35),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(
                        children: [
                          CustomTextTitleAuth(
                            text: "18".tr,
                          ),
                          const SizedBox(height: 15),
                          CustomTextBodyAuth(text: "19".tr),
                          const SizedBox(height: 65),
                          CustomTextFormAuth(
                            isNumber: false,
                            valid: (val) {
                              return validInput(val!, 5, 25, "name");
                            },
                            hinttext: "20".tr,
                            iconData: Icons.person_outline,
                            labeltext: "21".tr,
                            mycontroller: controller.name,
                          ),
                          // const SizedBox(height: 40),
                          CustomTextFormAuth(
                            isNumber: false,
                            valid: (val) {
                              return validInput(val!, 10, 30, "email");
                            },
                            hinttext: "10".tr,
                            iconData: Icons.email_outlined,
                            labeltext: "11".tr,
                            mycontroller: controller.email,
                          ),
                          CustomTextFormAuth(
                            isNumber: true,
                            valid: (val) {
                              return validInput(val!, 10, 25, "mobile");
                            },
                            hinttext: "22".tr,
                            iconData: Icons.phone_outlined,
                            labeltext: "23".tr,
                            mycontroller: controller.mobile,
                          ),
                          CustomTextFormAuth(
                            isNumber: false,
                            valid: (val) {
                              return validInput(val!, 8, 25, "password");
                            },
                            hinttext: "12".tr,
                            iconData: Icons.lock_outlined,
                            labeltext: "13".tr,
                            mycontroller: controller.password,
                          ),
                          const SizedBox(height: 4),
                          CustomButtonAuth(
                            text: "17".tr,
                            onPressed: () {
                              controller.signUp();
                            },
                          ),
                          const SizedBox(height: 10),
                          CustomTextSignupOrSignIn(
                            textone: "24".tr,
                            texttwo: "15".tr,
                            onTap: () {
                              controller.goToSignIn();
                            },
                          ),
                        ],
                      ),
                    ),
                  )),
        ));
  }
}
