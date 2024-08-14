import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/favourite_controller.dart';
import 'package:untitled1/view/screen/home.dart';
import 'package:untitled1/view/widget/customappbar.dart';
import 'package:untitled1/view/widget/favourite/customlistfavitems.dart';


class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    FavouriteControllerImp controller = Get.put(FavouriteControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<FavouriteControllerImp>(
            builder: ((controller) => ListView(
              children: [
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
                  height: 30,
                ),
                //  HandlingDataView(

                // )
                !controller.isSearch
                    ? GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2, //controller.data.length,

                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return CustomFavouriteListItems();
                  },
                )
                    : ListItemsSearch(listdatamodel: controller.listdata)
              ],
            ))),
      ),
    );
  }
}
