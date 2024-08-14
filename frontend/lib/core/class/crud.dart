import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;
import 'package:untitled1/core/class/statusrequest.dart';
import 'package:untitled1/core/functions/checkinternet.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    // try {
    // if (await CheckInternet()) {
    var response = await http.post(Uri.parse(linkUrl), body: data);
    print("RRRRRRR");
    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      Map responseBody = jsonDecode(response.body);
      print("responseBody");
      print(responseBody);
      return Right(responseBody);
    } else {
      return const Left(StatusRequest.serverFailure);
    }
    // } else {
    //   return const Left(StatusRequest.offlineFailure);
    // }
    // } catch (_) {
    //   return const Left(StatusRequest.serverException);
    // }
    //*********************************************************************
    //وقت علق ال try & catch عم يسجل الحساب بالداتا اما وقت رجعهن ما عم يسجل
  }
}
