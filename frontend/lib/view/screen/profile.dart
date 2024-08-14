import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled1/view/screen/library.dart';
import 'package:untitled1/view/widget/profile/customprofile.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView(children: [
      Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back)),

            height: Get.width / 5,
            // color: ColorApp.primarycolor,
          ),
          Positioned(
              top: Get.width / 7,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[100],
                  backgroundImage: AssetImage(
                    'lib/assets/images/book1.jpg',
                  ),
                ),
              )),
        ],
      ),
      SizedBox(
        height: 80,
      ),
      CustomProfile(name: "Kareen Shannis", numbooks: 2),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                onTap: () {
                  Get.to(Library());
                },
                trailing: Icon(Icons.library_add_outlined),
                title: Text("My library"),
              ),
              ListTile(
                onTap: () {
                  // controller.logout();
                },
                trailing: Icon(Icons.password),
                title: Text("Change password"),
              ),
            ],
          ),
        ),
      )
    ])));
  }
}
