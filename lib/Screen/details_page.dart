import 'package:flutter/material.dart';

import '../componets/profile_section.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset("lib/images/beef_chew.jpg"),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Quantity of good on sale
                    Text(
                      'Quantity: 10',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //product price

                    Text(
                      'Price: UGX 10000',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //product name
                Text(
                  'Product Name',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 15,
                ),
                //profile section
                ProfileSection(
                  imagePath: 'lib/images/beef_chew.jpg',
                  text: 'Bashir',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
