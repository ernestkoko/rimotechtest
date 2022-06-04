import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rimotechtest/common/custom_widgets.dart';
import 'package:rimotechtest/modules/reset_password_module/reset_password_module_controller.dart';

class ResetPasswordModulePage extends GetView<ResetPasswordModuleController> {
  final sizedH = const SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: ListView(children: [
            customCancelButton(),
            sizedH,
            const Text(
              "Reset Password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            sizedH,
            SizedBox(
              width: Get.width,
              child: const Text(
                "Enter your registered email address to recover your password.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Obx(() => customTextField(
                hint: "Email Address",
                onChanged: (text) => controller.onEmailChanged(text),
                textInputType: TextInputType.emailAddress,
                errorText: controller.emailErrorMessage())),
            const SizedBox(
              height: 50,
            ),
            Obx(
              () => TextButton(
                onPressed: !controller.loading.value ? controller.submit : null,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: !controller.loading.value
                      ? const Text(
                          "Reset Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )
                      : const CircularProgressIndicator(
                          color: Colors.white,
                        ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
