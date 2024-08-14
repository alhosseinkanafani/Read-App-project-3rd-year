import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/favourite_controller.dart';
import 'package:untitled1/controller/items_controller.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/view/screen/productdetails.dart';

//import 'package:reading_app/data/model/itemsmodel.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  // final ItemsModel itemsModel;
  const CustomListItems({
    super.key, //required this.itemsModel
  });

  @override
  Widget build(BuildContext context) {
    var itemsModel;
    return InkWell(
      onTap: () {
        Get.to(ProductDetails());
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
                    fontSize: 20),
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
                  GetBuilder<FavouriteController>(
                      builder: (controller) => IconButton(
                          onPressed: () {
                            if (controller.isFavourite[itemsModel.itrmsId] ==
                                "1") {
                              controller.setFavourite(itemsModel.itemsId, "0");
                            } else {
                              controller.setFavourite(itemsModel.itemsId, "1");
                            }
                          },
                          icon: Icon(
                            //  controller.isFavourite[itemsModel.itemsId] == "1"
                            //?
                            Icons.favorite,
                            //: Icons.favorite_border_outlined,
                            color: Colors.red,
                            size: 30,
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
