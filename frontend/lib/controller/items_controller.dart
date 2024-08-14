import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:untitled1/controller/home_controller.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changeCat(int val); //, String catval);
  getitems(String categoryed);
  gotoPageProductDetails();
}

class ItemsControllerImp extends SearchMixController {
  List categories = [];
  String? catid;
  int? selectedCat;

  //ItemsData testData = ItemsData(Get.find());
  List data = [];
  //late StatusRequest statusRequest;

  @override
  void onInit() {
    search = TextEditingController();
    intialData();
    super.onInit();
  }

  @override
  intialData() {
    //categories = Get.arguments['categories'];
    //selectedCat = Get.arguments['selectedCat'];
    //catid =Get.arguments['catid'];
    //getItems(catid!);
    //update();
  }

  @override
  changeCat(val) {
    //,catval
    selectedCat = val;
    // catid = catval;
    //getitems(catid!);
    update();
  }

  @override
  getitems(String categoryed) {
    // TODO: implement getitems
    throw UnimplementedError();
  }

  @override
  gotoPageProductDetails() {
    Get.toNamed("productdetails", arguments: {
      //"itemsmodel":itemsModel
    });
  }
}
