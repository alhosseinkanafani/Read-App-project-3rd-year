import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constent/apptheme.dart';
import 'package:untitled1/core/services/services.dart';

class LocalController extends GetxController{

Locale? Language ;

MyServices myServices = Get.find();

ThemeData appTheme = themeEnglish ;



changeLang(String langcode){
  Locale locale = Locale(langcode);
  myServices.sharedPreferences.setString("lang", langcode);
  appTheme = langcode == "ar" ? themeArabic : themeEnglish ;
  Get.changeTheme(appTheme);
  Get.updateLocale(locale);
}

@override
  void onInit() {
   String? sharedpreflang = myServices.sharedPreferences.getString("lang");
   if (sharedpreflang == "ar"){
     Language = const Locale("ar");
     appTheme = themeArabic;

    } else if(sharedpreflang == "En"){
     Language = const Locale("En");
     appTheme = themeEnglish;

    }else{
     Language = Locale(Get.deviceLocale!.languageCode);
     appTheme = themeEnglish;

    }
    super.onInit();
  }
}