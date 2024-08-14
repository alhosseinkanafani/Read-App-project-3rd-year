import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:untitled1/controller/home_controller.dart';
import 'package:untitled1/core/constent/color.dart';


class ListItems extends GetView<HomeControllerImp> {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return ItemsHome(); //(itemsModel:itemsModel.fromjson(controller.items[i]))
          }),
    );
  }
}

class ItemsHome extends StatelessWidget {
  final ItemsModel;
  const ItemsHome({super.key, this.ItemsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(
            //image.network("${AppLink.imagestItems}/${itemsModel.itemImage}")
            "lib/assets/images/book1.jpg",
            height: 100,
            width: 150,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: AppColor.secondColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20)),
          height: 120,
          width: 200,
        ),
      ],
    );
  }
}
