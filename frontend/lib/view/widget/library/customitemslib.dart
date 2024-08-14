import 'package:flutter/material.dart';
import 'package:untitled1/core/constent/color.dart';


class CustomItensLibrary extends StatelessWidget {
  final String name;
  final String descreption;
  const CustomItensLibrary(
      {super.key, required this.name, required this.descreption});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Image.asset(
                  "lib/assets/images/book1.jpg",
                  height: 90,
                )),
            Expanded(
                flex: 3,
                child: ListTile(
                  title: Text(
                    name,
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: Text(
                    descreption,
                    style:
                    TextStyle(fontSize: 18, color: AppColor.primar2ycolor),
                  ),
                )),
            Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 35,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove_circle_outline)),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
