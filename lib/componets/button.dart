import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final dynamic iconData;
  final Function()? onTap;
  const MyButton(
      {super.key,
      required this.text,
      required this.iconData,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blue.shade500,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconData,
            const SizedBox(
              width: 15,
            ),
            Center(
                child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            )),
          ],
        ),
      ),
    );
  }
}
