import 'package:untitled1/core/class/statusrequest.dart';

handlingData(response){
  if(response is StatusRequest){
   if(response == StatusRequest.offlineFailure){
     return response;
   }
  }else{
    return StatusRequest.success;
  }
}