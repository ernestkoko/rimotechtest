import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rimotechtest/common/app_strings.dart';
import 'congrats_controller.dart';

class CongratulationsModulePage extends GetView<CongratsController> {
  final sizedH = const SizedBox(
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppStrings.congratsAsset),
            const Text("Congratulations"),
            sizedH,
            Container(
              width: Get.width,
              child: const Text(AppStrings.applicationCompletedText),
            ),
            sizedH,
            SizedBox(
              width: Get.width,
              height: Get.height * 0.08,
              child: TextButton(
                onPressed: controller.onContinueClick,
                style: TextButton.styleFrom(
                  backgroundColor: Get.theme.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
