import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Widget TitleAndSubtitle({required String title, required String subtitle}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(height: 60),
      AutoSizeText(
        title,
        textAlign: TextAlign.center,
        maxLines: 1,
        minFontSize: 30,
        maxFontSize: 50,
        style: const TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w400,
          letterSpacing: -1.0,
        ),
      ),
      const SizedBox(height: 35),
      AutoSizeText(
        subtitle,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(height: 30),
    ],
  );
}
