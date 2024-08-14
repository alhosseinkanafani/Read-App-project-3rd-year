import 'package:flutter/material.dart';
//import 'package:reading_app/core/constant/color.dart';

class CustomTitkeHome extends StatelessWidget {
  final String title;
  const CustomTitkeHome({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 84, 82, 82)),
      ),
    );
  }
}
