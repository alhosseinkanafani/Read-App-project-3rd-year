import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled1/core/class/statusrequest.dart';
import 'package:untitled1/core/constent/images_assets.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest ;
  final Widget widget ;
  const  HandlingDataView({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading ?
       Center(child: Lottie.asset(AppImageAsset.loading , width: 230 , height: 230)) :
      statusRequest == StatusRequest.offlineFailure ?
      const Center(child: Text("Offline Failure")) :
      statusRequest == StatusRequest.serverFailure ?
      const Center(child: Text("Server Failure")) :
      statusRequest == StatusRequest.failure ?
      const Center(child: Text("No Data")) : widget;
  }
}
