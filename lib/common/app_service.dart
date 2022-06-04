import 'dart:convert';

import 'package:get/get.dart';

class AppService extends GetConnect{
  ///Reset password
  resetPassword({required String email})async {

    final data={
      "username": email
    };

    try{
     final result = await post("https://handova.ddns.net/api/forgot-password", data);

     print(result);

    }catch(error){
      rethrow;
    }

  }
}