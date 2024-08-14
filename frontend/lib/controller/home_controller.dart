//import 'package:get/get_core/get_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:untitled1/core/constent/routes.dart';
import 'package:untitled1/data/model/itemsmodel.dart';

abstract class HomeController extends SearchMixController {
  initialData();
  getdata();
  goToItems(List categories, int selectedCat);
}

class HomeControllerImp extends HomeController {
  //MyServices nyServices = Get.find();

  String? username;
  String? id;
  String? lang;

  //list data =[];
  List categories = [];
  List items = [];
  //late StatusRequest statusrequest ;

  @override
  void onInit() {
    search = TextEditingController();
    getdata();
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    // statusRequest =StatusRequest.loading;
    //if
  }

  @override
  goToItems(categories, selectedCat) {
    Get.toNamed(AppRoute.items,
        arguments: {"categories": categories, "selected": selectedCat});
  }

  goToPageProductDetails(itemsModel) {
    Get.toNamed("productdetails", arguments: {"itemsModel": itemsModel});
  }

  @override
  initialData() {
    // TODO: implement initialData
    //throw UnimplementedError();
  }
}

class SearchMixController extends GetxController {
  List<ItemsModel> listdata = [];
  // late StatusRequest statusRequest;
  // HomeData homedata =HomeData(Get.find());
  searchData() async {}
  TextEditingController? search;

  bool isSearch = false;
  // HomeData homedata =HomeData(Get.find());

  checkedSearch(val) {
    if (val == "") {
      //  statusRequest = StatusRequest.none;
      isSearch = false;
    }
    update();
  }

  onSearchItems() {
    isSearch = true;
    update();
  }
}
