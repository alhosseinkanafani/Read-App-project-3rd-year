import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/auth/successsignup_controller.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/view/widget/auth/custombuttonauth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.background,
        elevation: 0.0,
        title: Text("36".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<SuccessSignUpControllerImp>(
          builder: (controller) => Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Center(
                        child: Icon(
                      Icons.check_circle_outlined,
                      color: AppColor.primarycolor,
                      size: 200,
                    )),
                    Text("hghhcbihg  ukgiyf"),
                    Text("hghhcbihg  ukgiyf"),
                    Container(
                      width: double.infinity,
                      child: CustomButtonAuth(
                        text: "39".tr,
                        onPressed: () {
                          controller.goToPageLogin();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              )),
    );
  }
}
