import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock/app/global_widgets/txt_form.dart';
import 'package:stock/app/modules/login/login_logic.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginLogic>(
      builder: (_) {
        return Form(
          key: _.keyForm,
          child: Column(
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              TxtForm(
                  controller: _.txtEmail,
                  focus: _.focusEmail,
                  hintText: 'Email',
                  onFieldSubmitted: (value) {},
                  validator: (value) {}),
              const SizedBox(height: 10),
              TxtForm(
                  controller: _.txtPassword,
                  focus: _.focusPassword,
                  hintText: 'Password',
                  onFieldSubmitted: (value) {},
                  validator: (value) {},
                  obscureText: true),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: _.login, child: const Text('Ingresar'))
            ],
          ),
        );
      },
    );
  }
}
