import 'package:flutter/material.dart';

class FloatingSnackBar {
  final String text;
  final Color color;
  const FloatingSnackBar({required this.text, required this.color});

  SnackBar buildSnackbar() {
    return SnackBar(
      content: Text(text, style: const TextStyle(color: Colors.white)),
      backgroundColor: color,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    );
  }
}
