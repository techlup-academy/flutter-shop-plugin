import 'package:flutter/material.dart';

final shopTheme = ThemeData(
  primaryColor: Colors.blue,
  hintColor: Colors.red,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 16),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.green,
    textTheme: ButtonTextTheme.primary,
  ),
);

const textTitle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
const backgroundColor = Color.fromRGBO(252, 252, 248,0.4);