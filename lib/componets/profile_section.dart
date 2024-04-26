import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  final String imagePath;
  final String text;
  const ProfileSection(
      {super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 245, 244, 244)),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //profile pic
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                imagePath,
                height: 60,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 18),
            )
          ],
        ));
  }
}
