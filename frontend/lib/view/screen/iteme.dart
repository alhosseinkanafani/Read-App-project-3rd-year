import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:untitled1/controller/items_controller.dart';
import 'package:untitled1/view/screen/home.dart';
import 'package:untitled1/view/widget/customappbar.dart';
import 'package:untitled1/view/widget/items/customlistitems.dart';
import 'package:untitled1/view/widget/items/listCategoriesitems.dart';


class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp controller = Get.put(ItemsControllerImp());
    //FavouriteController controllerFav = Get.put(FavouriteController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(children: [
          CustomAppBar(
            titleappbar: 'Title, author or ISBN',
            onPressedicon: () {},
            onPressedSearch: () {
              controller.onSearchItems();
            },
            mycontroller: controller.search!,
            onChanged: (val) {
              controller.checkedSearch(val);
            },
          ),
          SizedBox(
            height: 25,
          ),
          const ListCategoriesItems(),
          GetBuilder<ItemsControllerImp>(
              builder:
                  (controller) => //HandlingDataView(statuerequest:controller.statusrequest,widget:)
                      !controller.isSearch
                          ? GridView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 2, //controller.data.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2, childAspectRatio: 0.7),
                              itemBuilder: (BuildContext context, index) {
                                // controllerFav
                                //         .isFavourite[controller.data[index]['items_id']] =
                                //     controller.data[index]['favourite'];
                                return CustomListItems(

                                    //itemsModel.fromjson(controller.data[index])

                                    );
                              })
                          : ListItemsSearch(listdatamodel: controller.listdata))
        ]),
      ),
    );
  }
}
