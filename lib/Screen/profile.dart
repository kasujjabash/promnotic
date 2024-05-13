import 'package:flutter/material.dart';

import '../componets/profile_details.dart';
import '../componets/profile_hero.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text('My profile'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
      ),
      body: const SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //hero profile
            HeroSection(),
            //sized box
            SizedBox(
              height: 20,
            ),
            //User Email
            ProfileDetails(
              name: 'Email',
              iconData: Icons.email,
              text: 'Bashir@gmail.com',
            ),
            //Phone number
            ProfileDetails(
              name: 'Phone number',
              iconData: Icons.phone,
              text: '+256707268485',
            )
          ],
        ),
      ),
    );
  }
}
