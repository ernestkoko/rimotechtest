import 'package:get/get.dart';

class NewDriverModuleProvider extends GetConnect {
  var data = {
    "first_name": "prince",
    "last_name": "charles",
    "email": "princecharles@handova.com",
    "phone": "08111111111",
    "password": "secret",
    "password_confirmation": "secret",
    "date_of_birth": "1990-10-01",
    "home_address": "2 Allen avenue, Ikeja",
    "next_of_kin_first_name": "megan",
    "next_of_kin_last_name": "charles",
    "next_of_kin_relationship": "wife",
    "next_of_kin_phone": "08122222222",
    "next_of_kin_email": "megancharles@handova.com",
    "next_of_kin_home_address": "3 Community Road, Ikeja"
  };

  registerDriver(
      {required String firstName,
      required String lastName,
      required String email,
      required String phone,
      required String password,
      required String passwordConfirm,
      required String dateOfBirth,
      required String homeAddress,
      required String nextOfKinFirstName,
      required String nextOfKinLastName,
      required String nextOfKinRelationship,
      required String nextOfKinPhone,
      required String nextOfKinEmail,
      required String nextOfKinHomeAddress}) async {
    final  _data = {
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
      "phone": phone,
      "password":password,
      "password_confirmation": passwordConfirm,
      "date_of_birth": dateOfBirth,
      "home_address": homeAddress,
      "next_of_kin_first_name": nextOfKinFirstName,
      "next_of_kin_last_name": nextOfKinLastName,
      "next_of_kin_relationship": nextOfKinRelationship,
      "next_of_kin_phone": nextOfKinPhone,
      "next_of_kin_email": nextOfKinEmail,
      "next_of_kin_home_address": nextOfKinHomeAddress
    };
    try {
      final result =
          await post("https://handova.ddns.net/api/drivers/register", _data);
      print(result);
    } catch (error) {
      rethrow;
    }
  }
}
