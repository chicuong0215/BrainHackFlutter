import 'package:flutter/material.dart';

class Utils {
  static void notification(BuildContext context, text) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Thông báo"),
          content: Text(text),
          actions: [],
        );
      },
    );
  }
}
