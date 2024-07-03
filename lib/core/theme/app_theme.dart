import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
  primaryColor: Colors.blue,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headline2: TextStyle(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.black),
    bodyText1: TextStyle(fontSize: 16.0, color: Colors.black),
    bodyText2: TextStyle(fontSize: 14.0, color: Colors.black54),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
  appBarTheme: AppBarTheme(
    color: Colors.blue,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueAccent),
    ),
    labelStyle: TextStyle(color: Colors.blue),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.blueGrey,
  primaryColor: Colors.blueGrey,
  backgroundColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headline2: TextStyle(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
    bodyText1: TextStyle(fontSize: 16.0, color: Colors.white),
    bodyText2: TextStyle(fontSize: 14.0, color: Colors.white70),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blueGrey,
    textTheme: ButtonTextTheme.primary,
  ),
  appBarTheme: AppBarTheme(
    color: Colors.blueGrey,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueGrey),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.tealAccent),
    ),
    labelStyle: TextStyle(color: Colors.tealAccent),
  ),
);
