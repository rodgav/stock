import 'package:flutter/material.dart';

class TxtForm extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focus;
  final String hintText;
  final Function(String) onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final bool obscureText;

  const TxtForm(
      {Key? key,
      required this.controller,
      required this.focus,
      required this.hintText,
      required this.onFieldSubmitted,
      required this.validator,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: TextFormField(
        controller: controller,
        focusNode: focus,
        style: const TextStyle(fontSize: 18, color: Colors.black),
        cursorColor: Colors.blue,
        onFieldSubmitted: onFieldSubmitted,
        validator: validator,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                borderSide: BorderSide(color: Colors.black, width: 2)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                borderSide: BorderSide(color: Colors.blue, width: 2)),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                borderSide: BorderSide(color: Colors.red, width: 2)),
            focusedErrorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                borderSide: BorderSide(color: Colors.red, width: 2)),
            disabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                borderSide: BorderSide(color: Colors.grey, width: 2))),
      ),
    );
  }
}
