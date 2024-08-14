import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/homescreencontroller.dart';
import 'package:untitled1/core/constent/color.dart';

import 'custombuttonappbar.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => BottomAppBar(
          color: AppColor.secondColor,
          elevation: 0,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            children: [
              ...List.generate(controller.listPage.length + 1, ((index) {
                int i = index > 2 ? index - 1 : index;
                return index == 2
                    ? Spacer()
                    : CustomButtonAppBar(
                    onPressed: () {
                      controller.changePage(i);
                    },
                    textbutton: controller.bottomappbar[i]['title'],
                    icondata: controller.bottomappbar[i]['icon'],
                    active: controller.currentpage == i ? true : false);
              }))
            ],
          ),
        ));
  }
}
