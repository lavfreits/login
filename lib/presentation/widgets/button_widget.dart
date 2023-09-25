import 'package:flutter/material.dart';

Widget Button(
    {required void Function()? onTap,
    required text,
    Color? colorBtn,
    Color? colorTxt,
    bool? withBorder,
    IconData? icon}) {
  return Row(
    children: [
      Expanded(
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(colorBtn ?? Colors.black),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: withBorder == true
                    ? const BorderSide(color: Colors.black, width: 2.0)
                    : BorderSide.none,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null)
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  text,
                  style:  TextStyle(
                    color: colorTxt ?? Colors.white,
                    fontWeight: FontWeight.w700
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
