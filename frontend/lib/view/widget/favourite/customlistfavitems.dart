import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/items_controller.dart';
import 'package:untitled1/core/constent/color.dart';
//import 'package:reading_app/controller/favourite_controller.dart';


class CustomFavouriteListItems extends GetView<ItemsControllerImp> {
  // final ItemsModel itemsModel;
  const CustomFavouriteListItems({
    super.key, //required this.itemsModel
  });

  @override
  Widget build(BuildContext context) {
    // var itemsModel;
    return InkWell(
      onTap: () {
        // controller.gotoPageProductDetails();
      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //  Hero(tag:"${itemsModel.itemsId}" , child:
              Image.asset(
                //cachnetworhimage(imageurl:applink.imagestitems +"/" +itemsModel.itemsImages)
                "lib/assets/images/book1.jpg",
              ), //)
              Text(
                "bhjnmlknbvcgh",
                style: TextStyle(
                    color: AppColor.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Text(
                "qwertyuiop;lkjhgfdsazxcvbnm,",
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColor.grey, fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "wert",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete_outline_outlined,
                        color: Colors.red,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
