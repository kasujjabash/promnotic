import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final String socialIcon;
  const NeuBox({super.key, required this.socialIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade100,
          ),
          child: Image.asset(
            socialIcon,
            height: 35,
          ),),
    );
  }
}
