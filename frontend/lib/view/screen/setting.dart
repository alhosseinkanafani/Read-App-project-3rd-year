import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/setting_controller.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/view/screen/profile.dart';


class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    SettingController controller = Get.put(SettingController());
    return Scaffold(
        body: Container(
            child: ListView(children: [
      Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: Get.width / 3,
            color: AppColor.primarycolor,
          ),
          Positioned(
              top: Get.width / 3.9,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    'lib/assets/images/book1.jpg',
                  ),
                ),
              ))
        ],
      ),
      SizedBox(
        height: 100,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                onTap: () {},
                trailing: Switch(
                  onChanged: (val) {},
                  value: true,
                ),
                title: Text("Disable Notifacation"),
              ),
              ListTile(
                onTap: () {
                  Get.to(Profile());
                },
                trailing: Icon(Icons.person),
                title: Text("Profile"),
              ),
              ListTile(
                onTap: () {},
                trailing: Icon(Icons.help_outline_rounded),
                title: Text("About us"),
              ),
              ListTile(
                onTap: () {}
                //async {
                //await launchUrl(Uri.parse("tel:+994757383"))
                // }
                ,
                trailing: Icon(Icons.phone_callback_outlined),
                title: Text("Contact us"),
              ),
              ListTile(
                onTap: () {},
                trailing: Icon(Icons.language_outlined),
                title: Text("Langauges"),
              ),
              ListTile(
                onTap: () {
                  // controller.logout();
                },
                trailing: Icon(Icons.exit_to_app),
                title: Text("logout"),
              ),
            ],
          ),
        ),
      )
    ])));
  }
}
