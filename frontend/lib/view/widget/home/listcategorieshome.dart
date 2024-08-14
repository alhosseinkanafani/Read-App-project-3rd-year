import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:untitled1/controller/home_controller.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/view/screen/iteme.dart';


//import 'package:reading_app/view/screen/iteme.dart';
//import 'package:reading_app/view/screen/iteme.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return SizedBox(
        height: 160,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: 8, //
          //controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Categories(i: index);
          },
        ));
  }
}

/////////////////////////////////////////////////////////
class Categories extends GetView<HomeControllerImp> {
  //final categoriesModel;
  final int? i;

  const Categories({super.key, required this.i}); // this.categoriesModel,

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.to(Items());
        },
        // controller.goToItems(controller.categories, i!);

        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColor.primarycolor,
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 70,
              width: 100,
              child: const Padding(
                padding: EdgeInsets.only(top: 15, left: 15, bottom: 15),
                child: Text(
                  'action',
                  style: TextStyle(fontSize: 18, color: AppColor.grey),
                ),
              ),
              // child: SvgPicture.network("${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",color:ColorApp.grey),
              //text("${categoriesModel.categoriesName}")
            ),
          ],
        ));
  }
}
