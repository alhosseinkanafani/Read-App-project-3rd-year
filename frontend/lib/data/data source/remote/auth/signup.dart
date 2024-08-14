import 'package:untitled1/core/class/crud.dart';
import 'package:untitled1/link_api.dart';

class SignupData {
  Crud crud;

  SignupData(this.crud);

  postData(
    String name,
    String email,
    String mobile,
    String password,
  ) async {
    var response = await crud.postData(AppLink.signup, {
      // According to the variable names in Backend
      "name": name,
      "email": email,
      "mobile": mobile,
      "password": password,
    });
    return response.fold((left) => left, (right) => right);
  }
}
