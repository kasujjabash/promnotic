// import 'package:flutter/material.dart';
// import 'package:promnotic/pages/login_page.dart';
// import 'package:promnotic/pages/register_page.dart';

// class LoginOrRegister extends StatefulWidget {
//   const LoginOrRegister({super.key});

//   @override
//   State<LoginOrRegister> createState() => _LoginOrRegisterState();
// }

// class _LoginOrRegisterState extends State<LoginOrRegister> {
//   bool isLoginPage = true;

//   void togglePages() {
//     setState(() {
//       isLoginPage = !isLoginPage;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoginPage 
//       ? LoginPage(toggleToRegister: togglePages) 
//       : RegisterPage(toggleToLogin: togglePages);
//   }
// }