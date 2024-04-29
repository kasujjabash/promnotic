import 'package:flutter/material.dart';

import '../models/adverts_model.dart';

class AdvertsTile extends StatelessWidget {
  final Advert adverts;
  final Function()? onTap;
  const AdvertsTile({super.key, required this.adverts, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.white38.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
            border: Border.all(
              color: Colors.grey[300]!, // Border color
              width: 1, // Border width
            ),
          ),
          child: ListTile(
            leading: Image.asset(
              adverts.imagePath,
              // height: 100,
            ),
            title: Text(
              adverts.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(adverts.description),
          ),
        ),
      ),
    );
  }
}
