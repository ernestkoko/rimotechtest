import 'package:get/get.dart';
import 'package:rimotechtest/common/app_strings.dart';
import 'package:rimotechtest/route/app_route.dart';
import 'new_driver_module_provider.dart';

enum NewDriverPage { first, second, third }

class NewDriverModuleController extends GetxController {
  final NewDriverModuleProvider _provider;
  final pageNumber = NewDriverPage.first.obs;
  final buttonText = AppStrings.emptyText.obs;
  final formTitle = AppStrings.emptyText.obs;
  final isSubmitting = false.obs;

  ///Form Data for registration of driver
  final firstName = AppStrings.emptyText.obs;
  final lastName = AppStrings.emptyText.obs;
  final email = AppStrings.emptyText.obs;
  final phone = AppStrings.emptyText.obs;
  final password = AppStrings.emptyText.obs;
  final passwordConfirm = AppStrings.emptyText.obs;
  final dateOfBirth = AppStrings.emptyText.obs;
  final homeAddress = AppStrings.emptyText.obs;
  final nextOfKinFirstName = AppStrings.emptyText.obs;
  final nextOfKinLastName = AppStrings.emptyText.obs;
  final nextOfKinRelationship = AppStrings.emptyText.obs;
  final nextOfKinPhone = AppStrings.emptyText.obs;
  final nextOfKinEmail = AppStrings.emptyText.obs;
  final nextOfKinHomeAddress = AppStrings.emptyText.obs;

  NewDriverModuleController(this._provider);

  @override
  onInit() {
    super.onInit();
    _initialiseWidget();
  }

  _initialiseWidget() {
    buttonText.value = AppStrings.buttonNextText;
    pageNumber.value = NewDriverPage.first;
    formTitle.value = AppStrings.personalInfo;
    isSubmitting.value = false;
  }

  onNextClick() async {
    switch (pageNumber.value) {
      case NewDriverPage.first:
        {
          pageNumber.value = NewDriverPage.second;
          formTitle.value = AppStrings.nextOfKin;
        }

        break;
      case NewDriverPage.second:
        {
          pageNumber.value = NewDriverPage.third;
          formTitle.value = AppStrings.docConfirmation;
          buttonText.value = AppStrings.buttonSubmitText;
        }

        break;
      case NewDriverPage.third:
        {
          await _registerDriver();
        }
        break;
    }
  }

  onCancelClick() {
    switch (pageNumber.value) {
      case NewDriverPage.third:
        {
          pageNumber.value = NewDriverPage.second;
          formTitle.value = AppStrings.nextOfKin;
          buttonText.value = AppStrings.buttonNextText;
        }

        break;
      case NewDriverPage.second:
        {
          pageNumber.value = NewDriverPage.first;
          formTitle.value = AppStrings.personalInfo;
          buttonText.value = AppStrings.buttonNextText;
        }

        break;
      case NewDriverPage.first:
        {
          //move to landing page
          Get.back();
        }
        break;
    }
  }

  ///get the inputs from the form
  onFirstNameChanged(String text) => firstName.value = text;

  onLastNameChanged(String text) => lastName.value = text;

  onEmailChanged(String text) => email.value = text;

  onPhoneChanged(String text) => phone.value = text;

  onPasswordChanged(String text) => password.value = text;

  onPasswordConfirmChanged(String text) => passwordConfirm.value = text;

  onDateOfBirthChanged(String text) => dateOfBirth.value = text;

  onHomeAddressChanged(String text) => homeAddress.value = text;

  onNextOfKinFirstNameChanged(String text) => nextOfKinFirstName.value = text;

 onNextOfKinLastNameChanged(String text) => nextOfKinLastName.value = text;

  onNextOfKinRelationshipChanged(String text) =>
      nextOfKinRelationship.value = text;

  onNextOfKinPhoneChanged(String text) => nextOfKinPhone.value = text;

  onNextOfKinEmailChanged(String text) => nextOfKinEmail.value = text;

  onNextOfKinHomeAddressChanged(String text) =>
      nextOfKinHomeAddress.value = text;

  /// Register a driver
  _registerDriver() async {
    try {
      if (pageNumber.value == NewDriverPage.third) {
        isSubmitting.value = true;

        await _provider.registerDriver(
            firstName: firstName.value,
            lastName: lastName.value,
            email: email.value,
            phone: phone.value,
            password: password.value,
            passwordConfirm: passwordConfirm.value,
            dateOfBirth: dateOfBirth.value,
            homeAddress: homeAddress.value,
            nextOfKinFirstName: nextOfKinFirstName.value,
            nextOfKinLastName: nextOfKinLastName.value,
            nextOfKinRelationship: nextOfKinRelationship.value,
            nextOfKinPhone: nextOfKinPhone.value,
            nextOfKinEmail: nextOfKinEmail.value,
            nextOfKinHomeAddress: nextOfKinHomeAddress.value);


        //validate the form and submit
        Get.toNamed(Routes.CONGRATS);
      }
    } catch (error) {
      print(error);
    }finally{
      isSubmitting.value= false;
    }
  }
}
