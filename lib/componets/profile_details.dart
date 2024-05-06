import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  final dynamic iconData;
  final String text;
  final String name;
  const ProfileDetails(
      {super.key,
      required this.iconData,
      required this.text,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        padding:
            const EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 10),
        decoration: BoxDecoration(color: Colors.grey.shade200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Detail title
            Text(
              name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            //Icon + the text
            Row(
              children: [
                Icon(
                  iconData,
                  size: 30,
                  color: Colors.blue.shade500,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
