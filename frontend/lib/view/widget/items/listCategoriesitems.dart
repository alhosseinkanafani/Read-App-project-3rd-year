import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:untitled1/controller/items_controller.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/view/screen/iteme.dart';
//import 'package:reading_app/view/screen/iteme.dart';

class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return SizedBox(
        height: 120,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: 8, //controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Categories(i: index);
          },
        ));
  }
}

/////////////////////////////////////////////////////////
class Categories extends GetView<ItemsControllerImp> {
  final categoriesModel;
  final int? i;
  const Categories({super.key, this.categoriesModel, required this.i});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.to(Items());
          // controller.goToItems(controller.categories, i!);
          controller.changeCat(i!);
        },
        child: Column(
          children: [
            GetBuilder<ItemsControllerImp>(
              builder: (controller) => Container(
                padding: EdgeInsets.only(right: 10, left: 10, bottom: 5),
                decoration: controller.selectedCat == i
                    ? BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                        width: 3,
                        color: AppColor.primarycolor,
                      )))
                    : null,
                child: Text(
                  'action',
                  style: TextStyle(fontSize: 22, color: AppColor.grey),
                ),
              ),
            )
            // child: SvgPicture.network("${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",color:ColorApp.grey),
            //text("${categoriesModel.categoriesName}")
          ],
        ));
  }
}
