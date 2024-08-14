import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/auth/successresetpassword_controller.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/view/widget/auth/custombuttonauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.background,
        elevation: 0.0,
        title:  Text("36".tr,
            style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<SuccessResetPasswordControllerImp>(builder: (controller) =>Container(
    padding: const EdgeInsets.all(15),
    child: Column(
    children: [
    Center(
    child: Icon(Icons.check_circle_outlined,
    size: 200,color: AppColor.primarycolor,)),
    Text("hghhcbihg  ukgiyf"),
    Text("hghhcbihg  ukgiyf"),
    const SizedBox(height: 60),
    Container(
    width: double.infinity,
    child:CustomButtonAuth(
    text: "39".tr,
    onPressed: (){
    controller.goToPageLogin();
    },),
    ),
    //SizedBox(height: 10,)
    ],),
    )),
    );
  }
}
