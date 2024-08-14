// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:untitled1/controller/test_controller.dart';
// import 'package:untitled1/core/class/handlingdata_view.dart';
// import 'package:lottie/lottie.dart';
// import 'package:untitled1/core/constent/color.dart';
//
// class TestView extends StatelessWidget {
//   const TestView ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Get.put(TestController());
//     return Scaffold(
//       backgroundColor: AppColor.primarycolor,
//       appBar: AppBar(title: Text("testView")),
//       body: GetBuilder<TestController>(builder: (controller) {
//
//         return HandlingDataView(
//           statusRequest: controller.statusRequest,
//           widget: ListView.builder(
//               itemCount: controller.data.length,
//               itemBuilder: (context , index){
//                 return Text("${controller.data}");
//               })
//           ,);
//       }),
//     );
//   }
// }
