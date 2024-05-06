import 'package:flutter/material.dart';
import 'package:promnotic/componets/auth_button.dart';

import 'package:promnotic/pages/register_page.dart';

import '../pages/login_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //image
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Image.asset('lib/images/Analytics_img.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            //heading text
            const Text(
              'Welcome to promonotic',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 18,
            ),
            //
            //intro description
            const Text(
              "Your personalised advertising hub! Whether you're a business owner or an indiviual selling your items, our platiform is your gateway to reaching your target effectively",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            //?login + register buttons,

            //login
            AuthButton(
              buttonText: 'Login',
              onTap: () {
                //Pop the screen
                Navigator.pop(context);
                //go to the register page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
            //register button
            // AuthButton(
            //   buttonText: 'Register',
            //   onTap: () {},
            // ),

            //?Register button made with adifferent color
            GestureDetector(
              onTap: () {
                //Pop the screen
                Navigator.pop(context);
                //go to the register page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ),
                );
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
