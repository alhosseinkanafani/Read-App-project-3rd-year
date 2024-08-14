import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CategoryData {
  int id;
  String name;

  CategoryData({
    required this.id,
    required this.name,
  });

  factory CategoryData.fromJson(Map<String, dynamic> json) {
    return CategoryData(
      id: json['id'],
      name: json['name'],
    );
  }
}

class BookShowData{
  int id;
String name;

BookShowData({
  required this.id,
  required this.name,
});
factory BookShowData.fromJson(Map<String, dynamic> json) {
  return BookShowData(
    id: json['id'],
    name: json['name'],
  );
}

}
class Connection {

 static Future<void> postData() async {
    //try {
    //if (await CheckInternet()) {
    var response = await http.get(Uri.parse("http://192.168.134.187:8000/api/Allcategories"));
    print("RRRRRRR");
    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      Map responseBody = jsonDecode(response.body);
      print("responseBody");
      print(responseBody);
    } else {
      print("ZZZ");

    }
    // } else {
    //   return const Left(StatusRequest.offlineFailure);
    // }
    // } catch (_) {
    //   return const Left(StatusRequest.serverException);
    // }
  }


  Future<List<CategoryData>> getAllCategories() async {
    print(8888);

    String linkUrl = "http://192.168.134.187:8000/api/Allcategories";
    print("yyyy:");
    print(linkUrl);

    var response = await http.get(Uri.parse(linkUrl));
    //print("Response status code: ${response.statusCode}");
    //print("Response body: ${response.body}");
    print("yyyy 2222:");

    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String, dynamic> responseBody = jsonDecode(response.body);
      List<dynamic> categoriesJson = responseBody['categories'];

      List<CategoryData> categories = categoriesJson
          .map((categoryJson) => CategoryData.fromJson(categoryJson))
          .toList();

      return categories;
    } else {
      print("Error fetching categories: ${response.statusCode}");
      return [];
    }
  }
}
