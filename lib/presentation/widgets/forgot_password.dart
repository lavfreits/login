import 'package:flutter/material.dart';

Widget forgotPassword({void Function()? forgotPasswordPressed}) {
  return TextButton(
      onPressed: forgotPasswordPressed,
      child: const Text(
        'Forgot password',
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.black,
        ),
      ));
}