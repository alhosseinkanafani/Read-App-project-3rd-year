import 'package:flutter/material.dart';
import 'package:untitled1/core/constent/color.dart';


class CustomAppBar extends StatelessWidget {
  final String titleappbar;
  final void Function()? onPressedicon;
  final void Function()? onPressedSearch;
  final void Function(String)? onChanged;
  final TextEditingController mycontroller;
  const CustomAppBar(
      {super.key,
      required this.titleappbar,
      required this.onPressedicon,
      required this.onPressedSearch,
      this.onChanged,
      required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            controller: mycontroller,
            onChanged: onChanged,
            decoration: InputDecoration(
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: onPressedSearch,
                color: AppColor.grey,
              ),
              hintText: titleappbar,
              hintStyle: TextStyle(color: AppColor.grey, fontSize: 18),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20)),
              filled: true,
              fillColor: AppColor.secondColor,
            ),
          )),
          // SizedBox(
          //   width: 10,
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //       color: ColorApp.secondColor,
          //       borderRadius: BorderRadius.circular(20)),
          //   width: 60,
          //   padding: EdgeInsets.symmetric(vertical: 7),
          //   child: IconButton(
          //       onPressed: onPressedicon,
          //       icon: Icon(
          //         Icons.notifications_active_outlined,
          //         size: 30,
          //         color: ColorApp.grey,
          //       )),
          // )
        ],
      ),
    );
  }
}
