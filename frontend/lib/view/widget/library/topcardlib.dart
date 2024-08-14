import 'package:flutter/material.dart';
import 'package:untitled1/core/constent/color.dart';

class TopCardLibrary extends StatelessWidget {
  final String message;
  const TopCardLibrary({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5, top: 5),
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 35,
      decoration: BoxDecoration(
          color: AppColor.secondColor, borderRadius: BorderRadius.circular(20)),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColor.primar2ycolor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
