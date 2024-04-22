import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  // final IconData;
  const MyTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextField(
        decoration: InputDecoration(
            // fillColor: Colors.grey,
            focusedBorder: const OutlineInputBorder(
                //this is gives the boarder side when the user is typing
                borderSide: BorderSide(color: Colors.black)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: const Icon(Icons.search),
            hintText: hintText),
      ),
    );
  }
}
