import 'package:flutter/material.dart';

import '../models/adverts_model.dart';

class AdvertsTile extends StatelessWidget {
  final Adverts adverts;
  const AdvertsTile({super.key, required this.adverts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
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
    );

    // Container(
    //   width: 100,
    //   decoration: const BoxDecoration(

    //       // color: Colors.grey.shade500,
    //       ),
    //   child: Row(
    //     children: [
    //       //Advert image
    //       Image.asset(
    //         adverts.imagePath,
    //         height: 50,
    //       ),
    //       //Advert tittle
    //       Text(
    //         adverts.title,
    //         style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //       )
    //       //advert description
    //     ],
    //   ),
    // );
  }
}
