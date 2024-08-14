import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/binding.dart';
import 'package:untitled1/bindings/initail_bindings.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/core/localization/changelocal.dart';
import 'package:untitled1/core/localization/tranlation.dart';
import 'package:untitled1/core/services/services.dart';
import 'package:untitled1/routes.dart';
import 'package:untitled1/view/screen/auth/onboarding.dart';
import 'package:untitled1/view/screen/language.dart';
import 'package:untitled1/view/widget/test.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return  GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      theme: controller.appTheme,
      locale: controller.Language,

     initialBinding: InitialBindings(),
     // home:  Test(),
     // routes:  routes,
      getPages: routes,
    );
  }
}
