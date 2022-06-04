import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rimotechtest/common/app_strings.dart';
import '../../common/custom_widgets.dart';
import 'new_driver_controller.dart';

class NewDriverModulePage extends GetView<NewDriverModuleController> {
  final sizedBox = const SizedBox(height: 20);
  final horizontalBox = const SizedBox(width: 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: controller.onCancelClick,
                      child: Row(
                        children: [
                          const Icon(Icons.cancel),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text("Register"),
                          )
                        ],
                      )),
                  sizedBox,
                  Text(controller.formTitle.value),
                  sizedBox,
                  if (controller.pageNumber.value == NewDriverPage.third)
                    SizedBox(
                      width: Get.width,
                      child: const Text(AppStrings.thirdTextSpecial),
                    ),
                  sizedBox,
                  if (controller.pageNumber.value == NewDriverPage.first)
                    Expanded(
                      child: _personalInfoWidgetList(),
                    ),
                  if (controller.pageNumber.value == NewDriverPage.second)
                    Expanded(
                      child: _nextOfKin(),
                    ),
                  if (controller.pageNumber.value == NewDriverPage.third)
                    Expanded(child: _docConfirmation()),
                  sizedBox,
                  TextButton(
                    onPressed: !controller.isSubmitting.value
                        ? controller.onNextClick
                        : null,
                    style: TextButton.styleFrom(
                      backgroundColor: Get.theme.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(Get.width, Get.height * 0.05),
                    ),
                    child: !controller.isSubmitting.value
                        ? Text(
                            controller.buttonText.value,
                            style: const TextStyle(color: Colors.white),
                          )
                        : const CircularProgressIndicator(
                            color: Colors.white,
                          ),
                  ),
                  sizedBox
                ],
              ),
            )),
      ),
    );
  }

  ///Personal Info widget
  Widget _personalInfoWidgetList() {
    return ListView(shrinkWrap: true, children: [
      customTextField(
          hint: "First Name",
          onChanged: (text) => controller.onFirstNameChanged(text)),
      sizedBox,
      customTextField(
          hint: "Last Name",
          onChanged: (text) => controller.onLastNameChanged(text)),
      sizedBox,
      Container(
        margin: const EdgeInsets.only(top: 10),
        child: customTextField(
            hint: "Email Address",
            suffixIcon: const Icon(Icons.arrow_downward),
            onChanged: (text) => controller.onEmailChanged(text)),
      ),
      sizedBox,
      _customRow((value) => controller.onPhoneChanged(value)),
      sizedBox,
      customTextField(
          hint: "Date of Birth",
          suffixIcon: const Icon(Icons.arrow_downward),
          onChanged: (text) => controller.onDateOfBirthChanged(text)),
      sizedBox,
      customTextField(hint: "Home Address / City"),
      sizedBox,
      customTextField(
          hint: "Create Password",
          suffixIcon: const Icon(Icons.remove_red_eye),
          onChanged: (text) => controller.onPasswordChanged(text)),
      sizedBox,
      customTextField(
          hint: "Confirm Password",
          suffixIcon: const Icon(Icons.remove_red_eye),
          onChanged: (text) => controller.onPasswordConfirmChanged(text)),
    ]);
  }

  ///Next of kin
  ///
  Widget _nextOfKin() {
    return ListView(
      shrinkWrap: true,
      children: [
        customTextField(
            hint: "First Name",
            onChanged: (text) => controller.onNextOfKinFirstNameChanged(text)),
        sizedBox,
        customTextField(
            hint: "Last Name",
            onChanged: (text) => controller.onNextOfKinLastNameChanged(text)),
        sizedBox,
        Container(
            margin: const EdgeInsets.only(top: 10),
            child: customTextField(
                hint: "Relationship",
                suffixIcon: const Icon(Icons.arrow_downward),
                onChanged: (text) =>
                    controller.onNextOfKinRelationshipChanged(text))),
        sizedBox,
       _customRow((value)=>controller.onNextOfKinPhoneChanged(value)),
        sizedBox,
        customTextField(
            hint: "Email Address",
            onChanged: (text) => controller.onNextOfKinEmailChanged(text)),
        sizedBox,
        customTextField(
            hint: "Home Address / City",
            onChanged: (text) =>
                controller.onNextOfKinHomeAddressChanged(text)),
      ],
    );
  }

  ///Doc confirmation
  Widget _docConfirmation() {
    return ListView(
      shrinkWrap: true,
      children: [
        sizedBox,
        customTextField(hint: "Vehicle Type"),
        sizedBox,
        customTextField(hint: "Vehicle Model"),
        sizedBox,
        customTextField(hint: "Vehicle Number"),
        sizedBox,
        _customUploadWidget("Driver's License / permit"),
        sizedBox,
        _customUploadWidget("Valid Insurance Document"),
        sizedBox,
        _customUploadWidget("Vehicle Inspection Report"),
        sizedBox,
        _customUploadWidget("Valid Utility Bill e.g PHCN"),
        sizedBox,
        _customUploadWidget("Take A Selfie"),
      ],
    );
  }

  Widget _customUploadWidget(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        SizedBox(
          height: 4,
        ),
        GestureDetector(
          child: Container(
            width: Get.width,
            height: Get.height * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.grey),
            child: const Icon(Icons.upload),
          ),
        ),
      ],
    );
  }

  Widget _customRow(ValueChanged<String>? onChange) {
    return IntrinsicWidth(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: customTextField(hint: "NG (+234)", readOnly: true),
          ),
          horizontalBox,
          Expanded(
            flex: 2,
            child: customTextField(
              hint: "Phone Number",
              onChanged: onChange,
            ),
          ),
        ],
      ),
    );
  }
}
