import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constent/color.dart';


class Notification_Page extends StatelessWidget {
  const Notification_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(10),
            child: ListView(children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back)),
                  ),
                  SizedBox(
                    width: Get.width / 4,
                  ),
                  Text(
                    "Notification",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColor.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("wert rtyui"),
                          Text("wert rtyui"),
                          Text("wert rtyui"),
                          Text("wert rtyui"),
                          Text("wert rtyui"),
                        ],
                      )))
            ])));
  }
}
