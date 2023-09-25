import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  Color? color;
  LoadingIndicator({super.key,  this.color});

  @override
  Widget build(BuildContext context) => Center(
        child: CircularProgressIndicator(
          color:  color ?? Colors.black,
        ),
      );
}
