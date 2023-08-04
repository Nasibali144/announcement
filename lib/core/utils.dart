import 'package:flutter/material.dart';

class Util {
  static void msg(BuildContext context, String message,
      {Color color = Colors.green}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }
}
