//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get_connect/http/src/utils/utils.dart';
//import 'package:reading_app/controller/home_controller.dart';
import 'package:untitled1/controller/homescreencontroller.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/view/screen/library.dart';
import 'package:untitled1/view/widget/home/cutombottomappbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: AppColor.primarycolor,
          onPressed: () {
            Get.to(Library());
          },
          child: const Icon(Icons.library_add_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomAppBarHome(),
        body: controller.listPage.elementAt(controller.currentpage),
      ),
    );
  }
}
