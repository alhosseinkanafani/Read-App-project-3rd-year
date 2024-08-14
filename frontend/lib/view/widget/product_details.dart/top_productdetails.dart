import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/productdetails_controller.dart';

//import 'package:reading_app/core/constant/color.dart';

class TopProductDetails extends GetView<ProductDetailsControllerImp> {
  const TopProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              //   color: ColorApp.primarycolor,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(0))),
        ),
        Positioned(
          top: 40,
          right: Get.width / 8,
          left: Get.width / 8,
          // child: Hero(
          //   tag:"${itemsModel.itemsId}" ,
          //   child: Image.asset('lib/assets/images/b.png',))
          // child: ColorFiltered(
          //   colorFilter: ColorFilter.mode(
          //       ColorApp.primar2ycolor, BlendMode.overlay),
          child: Image.asset(
            'lib/assets/images/boo3.jpg',
            height: 200,
            fit: BoxFit.fill,
          ),
        ) //)
      ],
    );
  }
}
