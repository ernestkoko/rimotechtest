import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rimotechtest/common/app_strings.dart';
import 'congrats_controller.dart';

class CongratulationsModulePage extends GetView<CongratsController> {

   final sizedH = SizedBox(height: 20,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppStrings.congratsAsset),
            Text("Congratulations"),
            sizedH,
            Container(
              width: Get.width,
              child: const Text(AppStrings.applicationCompletedText),
            ),
            sizedH,
            Container(
              width: Get.width,
              height: Get.height * 0.08,
              child: TextButton(
                onPressed: controller.onContinueClick,
                child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Get.theme.primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
