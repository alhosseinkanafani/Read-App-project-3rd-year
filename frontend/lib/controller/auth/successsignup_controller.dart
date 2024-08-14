import 'package:get/get.dart';
import 'package:untitled1/core/constent/routes.dart';

abstract class SuccessSignUpController extends GetxController{

  goToPageLogin();

}

class SuccessSignUpControllerImp extends SuccessSignUpController{
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.logIn);
  }


}