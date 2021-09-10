import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:stock/app/data/repositorys/data_repository.dart';
import 'package:stock/app/data/services/auth_service.dart';
import 'package:stock/app/routes/app_pages.dart';

class LoginLogic extends GetxController {
  final _dataRepository = Get.find<DataRepository>();
  final keyForm = GlobalKey();
  final txtName = TextEditingController();
  final focusName = FocusNode();
  final txtEmail = TextEditingController();
  final focusEmail = FocusNode();
  final txtPassword = TextEditingController();
  final focusPassword = FocusNode();
  final _loginRegister = true.obs;

  get loginRegister => _loginRegister.value;

  void login() async {
    final session = await _dataRepository.createSession(
        email: txtEmail.text, password: txtPassword.text);
    if (session != null) {
      AuthService.to.login(session.userId);
      Get.rootDelegate.offNamed(Routes.HOME);
    }
  }

  void register() async {
    final user = await _dataRepository.accountCreate(
        email: txtEmail.text, password: txtPassword.text, name: txtName.text);
    if (user != null) {
      AuthService.to.login(user.id);
      Get.rootDelegate.offNamed(Routes.HOME);
    }
  }

  void changeLoginRegister(bool value) {
    _loginRegister.value = value;
  }
}
