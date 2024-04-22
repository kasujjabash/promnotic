import 'package:flutter/material.dart';

class MyTextArea extends StatelessWidget {
  final String labelText;
  const MyTextArea({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: TextField(
        maxLines: 10,
        decoration: InputDecoration(
          labelText: labelText, labelStyle: const TextStyle(fontSize: 20),
          border: const OutlineInputBorder(),
          // hintText: 'Description'
        ),
      ),
    );
  }
}
