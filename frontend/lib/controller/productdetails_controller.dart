import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class ProductDetailsController extends GetxController {}

class ProductDetailsControllerImp extends ProductDetailsController {
  // late ItemModel itemModel;

  intialData() {
    // itemsModel = Get.arguments['itemsmodel'];
  }
  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}
