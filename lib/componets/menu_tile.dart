import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  const MenuTile({super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListTile(
        title: Text(text),
        leading: Icon(icon),
        onTap: onTap,
      ),
    );
  }
}
