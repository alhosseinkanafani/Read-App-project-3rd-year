import 'package:get/get.dart';
import 'package:untitled1/core/constent/routes.dart';

abstract class SuccessResetPasswordController extends GetxController{

  goToPageLogin();

}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController{
  @override
  goToPageLogin() {
Get.offAllNamed(AppRoute.logIn);
  }


}