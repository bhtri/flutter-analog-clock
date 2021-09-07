import 'package:analog_clock/screens/home_screen.dart';
import 'package:analog_clock/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Analog Clock',
      theme: themeData(),
      darkTheme: darkThemeData(),
      themeMode: ThemeMode.light,
      home: HomeScreen(),
    ),
  );
}
