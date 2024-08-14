import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:untitled1/core/constent/routes.dart';
import 'package:untitled1/core/middleware/mymiddleware.dart';
import 'package:untitled1/view/screen/auth/forget%20password/forgetpassword.dart';
import 'package:untitled1/view/screen/auth/login.dart';
import 'package:untitled1/view/screen/auth/onboarding.dart';
import 'package:untitled1/view/screen/auth/forget%20password/resetpassword.dart';
import 'package:untitled1/view/screen/auth/signup.dart';
import 'package:untitled1/view/screen/auth/success_signup.dart';
import 'package:untitled1/view/screen/auth/forget%20password/successresetpassword.dart';
import 'package:untitled1/view/screen/auth/forget%20password/verfiycode.dart';
import 'package:untitled1/view/screen/auth/verifiycodesignup.dart';
import 'package:untitled1/view/screen/home.dart';
import 'package:untitled1/view/screen/homescreen.dart';
import 'package:untitled1/view/screen/iteme.dart';
import 'package:untitled1/view/screen/language.dart';
import 'package:untitled1/view/test_view.dart';
import 'package:untitled1/view/widget/test.dart';


List<GetPage<dynamic>>? routes = [
  //Auth
  GetPage(name: "/", page: () => const Language() ,
    middlewares: [
      MyMiddleWare()
  ]),
  //GetPage(name: "/", page: () => const TestView() ),
  GetPage(name: AppRoute.logIn, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.veriFiyCode, page: () => const VerFiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetPassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.veriFiyCodeSignUp, page: () => const VerFiyCodeSignUp()),

  //OnBoarding
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),


  // Home
  GetPage(name: AppRoute.homescreen, page: () => const HomeScreen()),
  GetPage(name: AppRoute.items, page: () => const Items()),






];


