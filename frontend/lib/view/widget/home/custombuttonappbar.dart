import 'package:flutter/material.dart';
import 'package:untitled1/core/constent/color.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String textbutton;
  final IconData icondata;
  final bool? active;
  const CustomButtonAppBar(
      {super.key,
        required this.onPressed,
        required this.textbutton,
        required this.icondata,
        required this.active});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icondata,
              color: active == true ? AppColor.primarycolor : AppColor.grey),
          Text(
            textbutton,
            style: TextStyle(
                color: active == true ? AppColor.grey : AppColor.grey),
          )
        ],
      ),
    );
  }
}
