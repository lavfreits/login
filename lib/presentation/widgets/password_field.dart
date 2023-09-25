import 'package:flutter/material.dart';
Widget passwordField(TextEditingController passwordController) {

  return TextFormField(
    obscureText: true,
    controller: passwordController,
    keyboardType: TextInputType.visiblePassword,
    decoration: const InputDecoration(
      hintText: 'Password',
      hintStyle: TextStyle(color: Colors.grey),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      filled: true,
      fillColor: Colors.transparent,
    ),
  );
}
