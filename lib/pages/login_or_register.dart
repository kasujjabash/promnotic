// import 'package:flutter/material.dart';
// import 'package:promnotic/pages/login_page.dart';
// import 'package:promnotic/pages/register_page.dart';

// class LoginOrRegister extends StatefulWidget {
//   const LoginOrRegister({super.key});

//   @override
//   State<LoginOrRegister> createState() => _LoginOrRegisterState();
// }

// class _LoginOrRegisterState extends State<LoginOrRegister> {
//   //bool
//   bool? isLoginPage;
//   //toggle menthod to switch between login and registerscreen
//   void tooglePages() {
//     setState(() {
//       isLoginPage != isLoginPage;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (isLoginPage != isLoginPage) {
//       return LoginPage(
//         onTap: tooglePages,
//       );
//     } else {
//       return RegisterPage(
//         onTap: tooglePages,
//       );
//     }
//   }
// }
