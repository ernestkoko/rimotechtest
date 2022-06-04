import 'package:flutter/material.dart';
import '../../common/app_strings.dart';
import 'package:get/get.dart';
import 'package:rimotechtest/route/app_route.dart';

class LandingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const sizedH = SizedBox(height: 20);
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          sizedH,
          Text(
            "HANDOVA",
            style: TextStyle(color: Get.theme.primaryColor),
          ),
          Image.asset(AppStrings.logo),
          Text(
            "Drivers App",
            style: TextStyle(color: Get.theme.primaryColor),
          ),
          sizedH,
          GestureDetector(
            onTap: () => Get.toNamed(Routes.NEWDRIVERPAGE),
            child: Container(
              height: Get.height * 0.08,
              decoration: BoxDecoration(
                color: Get.theme.primaryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(10.00),
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: Container(
                width: Get.width,
                padding: const EdgeInsets.all(10.00),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.00),
                    color: Get.theme.primaryColor),
                child: const Center(
                  child: Text(
                    "New Driver",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          sizedH,
          GestureDetector(
            onTap: () => Get.toNamed(Routes.LOGINPAGE),
            child: Container(
              height: Get.height * 0.08,
              decoration: BoxDecoration(
                color: Get.theme.primaryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(3.00),
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: Container(
                width: Get.width,
                padding: const EdgeInsets.all(10.00),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.00),
                    color: Colors.white),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
