import 'dart:ffi';

import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
   mybutton({super.key,
  required this.text,
  required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}