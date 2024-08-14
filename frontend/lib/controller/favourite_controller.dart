import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:untitled1/controller/home_controller.dart';


abstract class FavouriteController extends GetxController {
  Map isFavourite = {};

  //key => id items
  //value => 1 or 0
  setFavourite(id, val) {
    isFavourite[id] = val;
    update();
  }
}

class FavouriteControllerImp extends SearchMixController {
  @override
  void onInit() {
    search = TextEditingController();
    intialData();
    super.onInit();
  }

  void intialData() {}
}
