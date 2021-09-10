import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock/app/global_widgets/txt_form.dart';
import 'package:stock/app/modules/login/login_logic.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginLogic>(
      builder: (_) {
        return Form(
          key: _.keyForm,
          child: Column(
            children: [
              const Text(
                'Register',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              TxtForm(
                  controller: _.txtName,
                  focus: _.focusName,
                  hintText: 'Name',
                  onFieldSubmitted: (value) {},
                  validator: (value) {}),
              const SizedBox(height: 10),
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
                  onPressed: _.register, child: const Text('Registrarme'))
            ],
          ),
        );
      },
    );
  }
}
