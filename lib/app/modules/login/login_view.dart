import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock/app/modules/login/widgets_login/login.dart';
import 'package:stock/app/modules/login/widgets_login/register.dart';

import 'login_logic.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginLogic>(builder: (_) {
      return GestureDetector(
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() =>
                        _.loginRegister ? const Login() : const Register()),
                    Wrap(
                      alignment: WrapAlignment.spaceAround,
                      runAlignment: WrapAlignment.spaceAround,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        TextButton(
                            onPressed: () => _.changeLoginRegister(true),
                            child: const Text('Iniciar Sesión')),
                       const Text('ó'),
                        TextButton(
                            onPressed: () => _.changeLoginRegister(false),
                            child: const Text('Registrarme'))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        onTap: () => FocusScope.of(context).unfocus(),
      );
    });
  }
}
