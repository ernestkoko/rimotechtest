import 'package:get/get.dart';
import 'package:rimotechtest/modules/login_module/login_module_provider.dart';

class LoginController extends GetxController {
  final LoginProvider _provider;

  LoginController(this._provider);

  var userName = ''.obs;
  var password = ''.obs;

  @override
  onInit() {
    super.onInit();
    userName.value = '';
    password.value = '';
  }

  submit() async {
    try {
      await _provider.login(username: userName.value, password: password.value);
    } catch (error) {
      print(error);
    }
  }

  onPasswordChanged(String text) => password.value = text;

  onUserNameChanged(String text) => userName.value = text;
}
