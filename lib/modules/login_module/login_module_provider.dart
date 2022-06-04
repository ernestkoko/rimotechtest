import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  Future<Response> login(
      {required String username,
      required String password}) async {
    try{
      final result = await post("https://handova.ddns.net/api/login", {
        "username": username,
        "password": password,
        "device_identification": "w0pSP0GcwC55vRFZuLZkKmCEk1cH02SylzWFZNsX",
        "firebase_messaging_token":
        "ujxPOCCBPk80wgTtafHjyGCbpqmG7uXkYEmynsWjsDL2lJEX6JGX9hR6UaykiNzsHZVIn32vQn3FEx8pDrSLhwz53zoOlgd8lbRZfuKKxwiBw13RBNcSzwYa9C4BusUddPfIO0sUgnSktW59yyidl3MOO4J344Pq"
      });

      print(result);

      return result;
    }catch(error){
      rethrow;
    }

  }
}
