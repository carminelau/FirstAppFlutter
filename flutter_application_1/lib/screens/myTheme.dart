import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyTheme {
  static final darkTheme = ThemeData(
      primarySwatch: Colors.indigo,
      textTheme: const TextTheme(
          headline3: TextStyle(color: Color.fromARGB(255, 184, 190, 223)),
          headline1: TextStyle(color: Colors.deepPurpleAccent),
          headline2: TextStyle(color: Colors.orange),
          bodyText2: TextStyle(color: Colors.white), //scritta Total Consierge
          subtitle1: TextStyle(color: Colors.pinkAccent),
          bodyText1: TextStyle(color: Colors.pinkAccent),
          headline4: TextStyle(color: Colors.pinkAccent),
          headline5: TextStyle(color: Colors.pinkAccent),
          headline6: TextStyle(color: Colors.pinkAccent),
          caption: TextStyle(color: Colors.pinkAccent),
          overline: TextStyle(color: Colors.pinkAccent),
          button: TextStyle(color: Colors.green)),
      iconTheme: const IconThemeData(color: Colors.white),
      brightness: Brightness.dark);

  static final lightTheme = ThemeData(
    primarySwatch: Colors.indigo,
    textTheme: const TextTheme(
      headline3: TextStyle(color: Colors.indigo), 
      headline1: TextStyle(color: Colors.deepPurpleAccent),
      headline2: TextStyle(color: Colors.orange),
      bodyText2: TextStyle(color: Colors.indigo), //scritta Total Consierge
      subtitle1: TextStyle(color: Colors.indigoAccent), //scritta nei Textfield
      bodyText1: TextStyle(color: Colors.purple),
      headline4: TextStyle(color: Colors.yellow),
      headline5: TextStyle(color: Colors.red),
      headline6: TextStyle(color: Colors.brown),
      caption: TextStyle(color: Colors.lightBlue),
      overline: TextStyle(color: Colors.black),
      button: TextStyle(color: Colors.green),
    ),
    iconTheme: const IconThemeData(color: Colors.indigo),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Color.fromARGB(221, 255, 255, 255),
  );
}
