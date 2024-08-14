// import 'package:get/get.dart';
// import 'package:untitled1/core/class/statusrequest.dart';
// import 'package:untitled1/core/functions/handlingdatacontroller.dart';
// import 'package:untitled1/data/data%20source/remote/test_data.dart';
//
// class TestController extends GetxController{
//   TestData testData = TestData(Get.find());
//
//   List data = [];
//
//   late StatusRequest statusRequest ;
//
//   getData()async{
//     statusRequest = StatusRequest.loading;
//     var response = await testData.getData();
//     statusRequest = handlingData(response);
//     if(StatusRequest.success == StatusRequest){
//       if(response['status']=="success"){
//         data.addAll(response['data']);
//       }else{
//         statusRequest = StatusRequest.failure;
//       }
//     }
//     update();
//   }
//
//   @override
//   void onInit() {
//     getData();
//     super.onInit();
//   }
//
// }