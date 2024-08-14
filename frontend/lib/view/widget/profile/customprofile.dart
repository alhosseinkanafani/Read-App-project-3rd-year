import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled1/core/constent/color.dart';


class CustomProfile extends StatelessWidget {
  final String name;
  final int numbooks;
  const CustomProfile({super.key, required this.name, required this.numbooks});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(4),
          child: Text(
            name,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColor.grey),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.all(4),
          child: Text(
            " 2 Books",
            style: TextStyle(fontSize: 16, color: AppColor.black),
          ),
        ),
        SizedBox(
          height: 70,
        )
      ],
    );
  }
}
