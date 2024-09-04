import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: Color(
      0xFFEF233C), // Warna lebih lembut dari primaryColor untuk background

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color(0xFFEF233C), // Warna teks pada button
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Bentuk medium rounded
      ),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Color(0xFFEF233C),
      side: BorderSide(color: Color(0xFFEF233C)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Bentuk medium rounded
      ),
    ),
  ),

  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: Color(0xFFEF233C), // Text title
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: Colors.black87, // Text body
      fontSize: 16,
    ),
    bodySmall: TextStyle(
      color: Colors.grey[600], // Text comment
      fontSize: 14,
    ),
    labelSmall: TextStyle(
      color: Colors.grey, // Text linethrough
      fontSize: 14,
      decoration: TextDecoration.lineThrough,
    ),
  ),
);
