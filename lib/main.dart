import 'package:flutter/material.dart';
import 'pages/bmi_page.dart';
import 'pages/result.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const BMIPage(),
        '/result': (context) => const Result(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0XFF2D2327),
        scaffoldBackgroundColor: const Color(0XFF45364B),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0XFF2D2327),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2D2327),
          titleTextStyle: TextStyle(fontFamily: 'Pacifico'),
        ),
      ),
    ),
  );
}

    // const BMIPage(),
