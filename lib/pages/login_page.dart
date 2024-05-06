import 'package:flutter/material.dart';

import 'package:promnotic/componets/auth_button.dart';
import 'package:promnotic/componets/my_textfield.dart';

import '../componets/neu_box.dart';

class LoginPage extends StatelessWidget {
  // email and password controllers
  final emailController = TextEditingController();
  final passController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Let's Sign you in
                    const Text(
                      "Let's Sign you in.",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //sized box
                    const SizedBox(
                      height: 10,
                    ),
                    //welcoming back
                    const Text(
                      "Welcome back\nYou've been missed!",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //Email textfield
                    MyTextField(
                        controller: emailController,
                        prefixIcon: const Icon(Icons.email),
                        hintText: 'Enter Email'),

                    //sized box
                    const SizedBox(
                      height: 20,
                    ),
                    //Password textfield
                    MyTextField(
                        controller: passController,
                        prefixIcon: const Icon(Icons.lock),
                        hintText: 'Enter password'),

                    //sized box
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: .5,
                            height: 2,
                          ),
                        ),
                        //Szed box
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "OR",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        //Szed box
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: .5,
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // sigin with ( google + facebook icons)
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //googl icon //todo add a google icon here
                        NeuBox(
                          socialIcon: 'lib/images/Facebook.png',
                        ),
                        //facebook icon
                        NeuBox(
                          socialIcon: 'lib/images/Facebook.png',
                        )
                      ],
                    ),
                    //   const SizedBox(
                    //     height: 20,
                    //   ),
                  ],
                ),

                //you don't have an account, register + the Login button
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //you don't have an account, register
                          Text("You don't have an account?"),
                          //Sized box
                          SizedBox(
                            width: 10,
                          ),
                          //Register
                          Text(
                            "Register",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      //sized box
                      const SizedBox(
                        width: 10,
                      ),
                      //Login button
                      AuthButton(buttonText: 'Login', onTap: () {}),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
