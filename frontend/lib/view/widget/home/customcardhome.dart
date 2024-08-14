import 'package:flutter/material.dart';
import 'package:untitled1/core/constent/color.dart';

class CustomCardHome extends StatelessWidget {
  final String title;
  final String body;
  const CustomCardHome({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: ListTile(
              title: Text(
                title,
                style: TextStyle(
                    color: AppColor.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                body,
                style: TextStyle(color: AppColor.grey, fontSize: 23),
              ),
            ),
            height: 150,
            decoration: BoxDecoration(
                color: AppColor.primarycolor,
                borderRadius: BorderRadius.circular(20)),
          ),
          Positioned(
              top: -60,
              right: -20,
              child: Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(160),
                  color: AppColor.primar2ycolor,
                ),
              ))
        ],
      ),
    );
  }
}
