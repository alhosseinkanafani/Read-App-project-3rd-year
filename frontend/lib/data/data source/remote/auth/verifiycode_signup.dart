// import 'package:untitled1/core/class/crud.dart';
// import 'package:untitled1/link_api.dart';
//
// class VerifiyCodeSignupData{
//
//   Crud crud;
//
//   VerifiyCodeSignupData(this.crud);
//
//   postData(
//       String email,
//       String verifiycode
//       )async{
//     var response = await crud.postData(AppLink.signup,{
//       //According to the variable names in Backend
//       "email" : email,
//       "verifiycode" : verifiycode,
//     }) ;
//     return response.fold((left) => left, (right) => right);
//   }
// }