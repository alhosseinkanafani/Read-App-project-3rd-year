import 'package:flutter/material.dart';
import 'package:untitled1/core/constent/color.dart';

class CustomButtonLibrary extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const CustomButtonLibrary(
      {super.key, required this.textbutton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primarycolor,
        textColor: AppColor.grey,
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onPressed: onPressed,
        child: Text(
          textbutton,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
