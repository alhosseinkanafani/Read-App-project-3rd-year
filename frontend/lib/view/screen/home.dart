

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/home_controller.dart';
import 'package:untitled1/data/model/itemsmodel.dart';
import 'package:untitled1/view/widget/customappbar.dart';
import 'package:untitled1/view/widget/home/customcardhome.dart';
import 'package:untitled1/view/widget/home/customtitlehome.dart';
import 'package:untitled1/view/widget/home/listcategorieshome.dart';
import 'package:untitled1/view/widget/home/listitems.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder:
            (controller) => //HandlingDataView class(stutusRequest:container)

                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
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
                      //HandlingDataView(statusRequest:controller.statusRequest,widget:)
                      !controller.isSearch
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  CustomCardHome(
                                      title: 'Get Started',
                                      body:
                                          'Discover new and \n interesting books.'),
                                  Row(
                                    children: [
                                      CustomTitkeHome(title: "Categories"),
                                    ],
                                  ),
                                  ListCategoriesHome(),
                                  Row(
                                    children: [
                                      CustomTitkeHome(title: "Books for you"),
                                    ],
                                  ),
                                  ListItems(),
                                  Row(
                                    children: [
                                      CustomTitkeHome(title: "latest"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ListItems(),
                                ])
                          : ListItemsSearch(listdatamodel: controller.listdata)
                    ])));
  }
}

class ListItemsSearch extends GetView<HomeControllerImp> {
  final List<ItemsModel> listdatamodel;
  const ListItemsSearch({super.key, required this.listdatamodel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listdatamodel.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              //controller.goToPageProductDetails(listdatamodel[index]);
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Image.asset("lib/assets/images/book1.jpg")),
                      Expanded(
                          child: ListTile(
                        title: Text("gh"), //listdatamodel[index].itemsName),
                        subtitle:
                            Text('gh'), //listdatamodel[index].categoriesName),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
