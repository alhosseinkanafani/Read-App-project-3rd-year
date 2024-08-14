import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/auth/forgetpassword_controller.dart';
import 'package:untitled1/controller/auth/signup_controller.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/core/functions/validinput.dart';
import 'package:untitled1/view/widget/auth/custombuttonauth.dart';
import 'package:untitled1/view/widget/auth/customtextbodyauth.dart';
import 'package:untitled1/view/widget/auth/customtextsignupauth.dart';
import 'package:untitled1/view/widget/auth/customtexttitleauth.dart';
import 'package:untitled1/view/widget/auth/cutomtextformauth.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return  Scaffold(
        backgroundColor: AppColor.background,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.background,
          elevation: 0.0,
          title:  Text("14".tr,
              style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
        ),
        body: GetBuilder<ForgetPasswordControllerImp>(builder: (controller) =>Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 35),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [

                CustomTextTitleAuth(text: "25".tr,),
                const SizedBox(height: 15),
                CustomTextBodyAuth(text: "26".tr),
                const SizedBox(height: 65),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val){
                    return validInput(val!, 10, 30, "email");

                  },
                  hinttext: "10".tr,
                  iconData: Icons.email_outlined,
                  labeltext: "11".tr,
                  mycontroller: controller.email,
                ),
                const SizedBox(height: 4),
                CustomButtonAuth(text: "27".tr,onPressed: (){
                  controller.checkEmail();
                },),
                const SizedBox(height: 10),

              ],),
          ),
        )
        ));
  }
}
