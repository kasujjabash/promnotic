// import 'package:cafe/componets/buttom_nav_bar.dart';
// import 'package:cafe/screen/home_screen.dart';
// import 'package:flutter/material.dart';
// import '../screen/cart_screen.dart';
// import '../screen/notifications_screen.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   //keep track of the selecetd index
//   int _selectedIndex = 0;
//   // method to update the selecte index
//   void navigateBottomBar(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   //!list of pages to navigate to
//   final List _pages = [
//     const HomeScreen(),
   
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: ButtomNavBar(
//         onTabChange: (index) => navigateBottomBar(index),
//       ),
//       body: _pages[_selectedIndex],
//     );
//   }
// }
