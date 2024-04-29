import 'package:flutter/material.dart';
import 'package:promnotic/componets/button.dart';
import 'package:promnotic/models/adverts_model.dart';

class DetailsScreen extends StatelessWidget {
  final Advert advert;
  const DetailsScreen({super.key, required this.advert});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(advert.imagePath),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Quantity of good on sale
                      // Text(
                      //   advert.quantity.toString(),
                      //   style: const TextStyle(
                      //     fontSize: 18,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      //rating
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(207, 187, 1, 1),
                            // size: 10,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '4',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),

                      //product price

                      Text(
                        advert.price,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //product name
                  Text(
                    advert.title,
                    style: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold),
                  ),

                  //profile section
                  // ProfileSection(
                  //   imagePath: advert.imagePath,
                  //   text: 'Bashir',
                  // ),
                  //Marketing text
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Text(
                      advert.description,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  //call button
                  MyButton(
                    text: 'Call seller',
                    iconData: const Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //message the seller
                  MyButton(
                    text: 'Message seller',
                    iconData: const Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  //Sellers profile
                  MyButton(
                    text: 'View sellers profile',
                    iconData: const Icon(
                      Icons.person_2,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
