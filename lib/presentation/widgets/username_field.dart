import 'package:flutter/material.dart';

Widget usernameField(TextEditingController emailController) {
  return TextFormField(
    controller: emailController,
    keyboardType: TextInputType.emailAddress,
    decoration: const InputDecoration(
      hintText: 'Email',
      hintStyle: TextStyle(color: Colors.grey),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      filled: true,
      fillColor: Colors.transparent,
    ),
  );
}
