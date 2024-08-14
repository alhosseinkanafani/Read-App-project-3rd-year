import 'package:flutter/material.dart';
import 'package:untitled1/core/constent/color.dart';


class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "name",
              style: TextStyle(
                  color: AppColor.primar2ycolor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "june 3,2024 6:09 pm",
              style: TextStyle(
                color: AppColor.grey,
                fontSize: 15,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 13,
        ),
        Text(
          "qwer wer erty rty dfg df dfg rty rty dg cvbn rtyu qwer wer erty rty dfg df dfg rty rty dg cvbn rtyu",
          style: TextStyle(
            color: AppColor.black,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Row(
          children: [
            Text(
              "Like  ",
              style: TextStyle(color: AppColor.primar2ycolor, fontSize: 16),
            ),
            Text(
              "  Comment",
              style: TextStyle(color: AppColor.primar2ycolor, fontSize: 16),
            ),
            Spacer(),
            Text(
              "20  ",
              style: TextStyle(color: AppColor.primar2ycolor, fontSize: 16),
            ),
            Icon(
              Icons.comment_outlined,
              color: AppColor.primar2ycolor,
              size: 18,
            ),
            Text(
              "    200  ",
              style: TextStyle(color: AppColor.primar2ycolor, fontSize: 16),
            ),
            Icon(
              Icons.comment_outlined,
              color: AppColor.primar2ycolor,
              size: 18,
            )
          ],
        )
      ],
    );
  }
}
