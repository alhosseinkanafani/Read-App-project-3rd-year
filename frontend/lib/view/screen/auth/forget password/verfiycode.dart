import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/auth/forgetpassword_controller.dart';
import 'package:untitled1/controller/auth/signup_controller.dart';
import 'package:untitled1/controller/auth/verfiycode_controller.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/view/widget/auth/custombuttonauth.dart';
import 'package:untitled1/view/widget/auth/customtextbodyauth.dart';
import 'package:untitled1/view/widget/auth/customtextsignupauth.dart';
import 'package:untitled1/view/widget/auth/customtexttitleauth.dart';
import 'package:untitled1/view/widget/auth/cutomtextformauth.dart';

class VerFiyCode extends StatelessWidget {
  const VerFiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VeriFiyCodeControllerImp());
    return Scaffold(
        backgroundColor: AppColor.background,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.background,
          elevation: 0.0,
          title: Text("33".tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: GetBuilder<VeriFiyCodeControllerImp>(
          builder: (controller) => Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: ListView(
              children: [
                CustomTextTitleAuth(
                  text: "34".tr,
                ),
                const SizedBox(height: 15),
                CustomTextBodyAuth(text: "35".tr),
                const SizedBox(height: 65),
                OtpTextField(
                  fieldWidth: 50.0,
                  borderRadius: BorderRadius.circular(15),
                  numberOfFields: 5,
                  borderColor: Color(0xFF512DA8),
                  showFieldAsBox: true,
                  onCodeChanged: (String code) {},
                  onSubmit: (String verificationCode) {
                    controller.goToResetPassword();
                  },
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ));
  }
}
