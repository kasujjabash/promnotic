import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
    colorScheme: ColorScheme.light(
        background:
            Colors.grey.shade300, // use this for the background of the app
        primary: Colors.blue
            .shade900, // use this on the key elements like HEADERS, TITLES,  OR IMPORTANT BUTTONS  to draw attention
        secondary: Colors.blue
            .shade500, //You can use this to support the elements like subheadings, less important buttons, or decorative accents
        tertiary: Colors.blue
            .shade300, //These can be used additinal accents, borders, or small details, to add depth and visual interest
        inversePrimary: Colors
            .white // This could be used for text on top of primary colors to ensure readability, its often a contasting color to the primary color.Color

        ));
