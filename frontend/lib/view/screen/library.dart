import 'package:flutter/material.dart';
import 'package:untitled1/view/widget/library/appbarlib.dart';
import 'package:untitled1/view/widget/library/buttonlib.dart';
import 'package:untitled1/view/widget/library/customitemslib.dart';
import 'package:untitled1/view/widget/library/topcardlib.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 100,
            ),
            CustomButtonLibrary(
              textbutton: "Reading Progress",
              onPressed: () {},
            )
          ],
        ),
      ),
      body: ListView(children: [
        AppBarLibrary(title: "My Library"),
        SizedBox(
          height: 10,
        ),
        TopCardLibrary(message: "You Have 2 books in your library"),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              CustomItensLibrary(name: "Game of thron", descreption: "read"),
              CustomItensLibrary(name: "Game of thron", descreption: "read")
            ],
          ),
        )
      ]),
    );
  }
}
