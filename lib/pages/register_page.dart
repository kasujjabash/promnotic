import 'package:flutter/material.dart';
import 'package:promnotic/componets/auth_button.dart';
import 'package:promnotic/componets/my_textfield.dart';

import '../componets/neu_box.dart';

class RegisterPage extends StatelessWidget {
  // email and password controllers
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passworsController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //register

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Let's Sign you in
                    const Text(
                      "Let's create an \naccount for you.",
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
                      "You are most Welcome!",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    //username textfield
                    MyTextField(
                        controller: usernameController,
                        prefixIcon: const Icon(Icons.person),
                        hintText: 'Enter Username'),
                    //sized box
                    const SizedBox(
                      height: 20,
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
                        controller: passworsController,
                        prefixIcon: const Icon(Icons.lock),
                        hintText: 'Enter password'),

                    const SizedBox(
                      height: 20,
                    ),
                    //confirm password textfield
                    MyTextField(
                        controller: confirmPasswordController,
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
                          "Continue with",
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
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),

                //you don't have an account, register + the Login button
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //you don't have an account, register
                        Text("You already have an account?"),
                        //Sized box
                        SizedBox(
                          width: 10,
                        ),
                        //Register
                        Text(
                          "Login",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    //sized box
                    const SizedBox(
                      width: 10,
                    ),
                    //Login button
                    AuthButton(buttonText: 'Register', onTap: () {}),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
