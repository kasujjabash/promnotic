import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.blue.shade900,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80),
            bottomRight: Radius.circular(80),
          )),
      height: MediaQuery.of(context).size.height * .35,
      child: const Column(
        children: [
          //profile picture
          Center(
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('lib/images/bash.png'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //PERSONAL INFORMATION
          //User name
          Text(
            'Bashir Kasujja',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}
