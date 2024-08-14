import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:untitled1/view/screen/favourite.dart';
import 'package:untitled1/view/screen/home.dart';
import 'package:untitled1/view/screen/notification.dart';
import 'package:untitled1/view/screen/setting.dart';


abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const Home_Page(),
    const Favourite(),
    const Notification_Page(),
    const Settings(),
  ];

  List bottomappbar = [
    {"title": "Home", "icon": Icons.home},
    {"title": "Favourite", "icon": Icons.favorite},
    {"title": "Notification", "icon": Icons.notifications_active_outlined},
    {"title": "Setting", "icon": Icons.settings},
  ];
  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
