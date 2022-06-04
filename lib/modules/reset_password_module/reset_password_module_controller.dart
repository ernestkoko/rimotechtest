import 'package:get/get.dart';
import 'package:rimotechtest/common/app_strings.dart';
import 'package:rimotechtest/modules/reset_password_module/reset_password_provider.dart';

class ResetPasswordModuleController extends GetxController {
  final ResetPasswordProvider _provider;
  final email = AppStrings.emptyText.obs;
  final loading = false.obs;
  final _submitClicked = false.obs;

  ResetPasswordModuleController(this._provider);

  @override
  onInit() {
    super.onInit();
    email.value = '';
    loading.value = false;
    _submitClicked.value = false;
  }

  ///Validate email
  String? emailErrorMessage() {
    if (_submitClicked.value == true) {
      return email.value.isEmail ? null : "Invalid Email";
    } else {
      return null;
    }
  }

  ///on email changed
  onEmailChanged(String text) => email.value = text;

  submit() async {
    _submitClicked.value = true;
    loading.value = true;
    try {
      if (emailErrorMessage() == null) {
        await _provider.resetPassword(email: email.value);
      }
    } catch (error) {
      print(error);
    } finally {
      loading.value = false;
    }
  }
}
