import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constent/routes.dart';
import 'package:untitled1/core/services/services.dart';

class MyMiddleWare extends GetMiddleware{

 @override
int? get priorty => 1 ;

MyServices myServices = Get.find();

 @override
RouteSettings? redirect(String? route) {
  if(myServices.sharedPreferences.getString("onboarding")=="1"){
   return const RouteSettings(name: AppRoute.logIn);
  }
}

}