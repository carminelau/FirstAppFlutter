import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool value) {
    themeMode = value ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyTheme {
  static final darkTheme = ThemeData(
    textTheme: GoogleFonts.josefinSansTextTheme(),
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.grey.shade900,
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme(
        primary: Color.fromARGB(255, 0, 13, 255),
        secondary: Color.fromARGB(255, 0, 13, 255),
        surface: Colors.white,
        background: Colors.white,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.black,
        onBackground: Colors.black,
        onError: Colors.white,
        brightness: Brightness.light,
      ),
    ),
    primaryTextTheme: const TextTheme(headline1: TextStyle(color: Colors.white)),
  );

  static final lightTheme = ThemeData(
    textTheme: GoogleFonts.josefinSansTextTheme(),
    primarySwatch: Colors.lightBlue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme(
        primary: Colors.blue,
        secondary: Colors.blue,
        surface: Colors.white,
        background: Colors.white,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.black,
        onBackground: Colors.black,
        onError: Colors.white,
        brightness: Brightness.light,
      ),
    ),
    primaryTextTheme: const TextTheme(headline1: TextStyle(color: Colors.black)),
  );
}
