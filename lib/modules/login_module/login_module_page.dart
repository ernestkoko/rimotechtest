import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rimotechtest/common/app_strings.dart';
import '../../common/custom_widgets.dart';
import 'login_module_controller.dart';
import '../../route/app_route.dart';

class LoginModulePage extends GetView<LoginController> {
  final sizedH = const SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.all(15),
        child: ListView(
          children: [
            GestureDetector(
                onTap: () => Get.back(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.cancel_outlined),
                  ],
                )),
            sizedH,
            const Text(
              "Enter Phone Number",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            sizedH,
            SizedBox(
              width: Get.width,
              child: const Text(
                "Login with your registered phone number.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ),
            sizedH,
            sizedH,
            customRow((value) => controller.onPasswordChanged(value)),
            sizedH,
            customTextField(
                hint: "Enter Password",
                textInputType: TextInputType.text,
                onChanged: (text) => controller.onPasswordChanged(text)),
            sizedH,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => {
                      //go to map
                      Get.toNamed(Routes.MAPPAGE)
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            sizedH,
            sizedH,
            Center(
              child: GestureDetector(
                onTap: () async => await Get.toNamed(Routes.RESETPASSWORD),
                child: const Text(
                  "Forgot your password?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            sizedH,
            sizedH,
            sizedH,
            Center(
              child: Image.asset(AppStrings.thumbPrintAsset),
            )
          ],
        ),
      )),
    );
  }
}
