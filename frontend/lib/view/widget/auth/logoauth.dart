import 'package:flutter/material.dart';
import 'package:untitled1/core/constent/images_assets.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAsset.logo,height: 230);
  }
}
