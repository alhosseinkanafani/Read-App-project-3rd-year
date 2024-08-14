import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/auth/forgetpassword_controller.dart';
import 'package:untitled1/controller/auth/resetpassword_controller.dart';
import 'package:untitled1/controller/auth/signup_controller.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/core/functions/validinput.dart';
import 'package:untitled1/view/widget/auth/custombuttonauth.dart';
import 'package:untitled1/view/widget/auth/customtextbodyauth.dart';
import 'package:untitled1/view/widget/auth/customtextsignupauth.dart';
import 'package:untitled1/view/widget/auth/customtexttitleauth.dart';
import 'package:untitled1/view/widget/auth/cutomtextformauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
        backgroundColor: AppColor.background,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.background,
          elevation: 0.0,
          title: Text("28".tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: GetBuilder<ResetPasswordControllerImp>(
          builder: (controller) => Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  CustomTextTitleAuth(
                    text: "29".tr,
                  ),
                  const SizedBox(height: 15),
                  CustomTextBodyAuth(text: "30".tr),
                  const SizedBox(height: 65),
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
                  CustomTextFormAuth(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 8, 25, "password");
                    },
                    hinttext: "31".tr,
                    iconData: Icons.lock_outlined,
                    labeltext: "13".tr,
                    mycontroller: controller.rePassword,
                  ),
                  const SizedBox(height: 4),
                  CustomButtonAuth(
                    text: "32".tr,
                    onPressed: () {
                      controller.resetPassword();
                    },
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ));
  }
}
