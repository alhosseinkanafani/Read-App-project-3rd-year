import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/core/constent/routes.dart';
import 'package:untitled1/core/localization/changelocal.dart';
import 'package:untitled1/view/screen/auth/onboarding.dart';
import 'package:untitled1/view/widget/Language/customButtonLang.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
       child:  Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("1".tr,
             style: TextStyle(fontWeight: FontWeight.bold )),
             SizedBox(height: 20),
           CustomButtonLang(textbutton: "Arabic", onPressed: (){
              controller.changeLang("ar");
              Get.toNamed(AppRoute.onBoarding);
           }),
           CustomButtonLang(textbutton: "English", onPressed: (){
             controller.changeLang("en");
             Get.toNamed(AppRoute.onBoarding);

           }),
         ],
       )),
    );
  }
}



