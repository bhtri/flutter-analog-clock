import 'package:analog_clock/models/my_theme_provider.dart';
import 'package:analog_clock/screens/home_screen.dart';
import 'package:analog_clock/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MyThemeModel(),
      child: Consumer<MyThemeModel>(
        builder: (context, theme, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Analog Clock',
            theme: themeData(),
            darkTheme: darkThemeData(),
            themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
            home: HomeScreen(),
          );
        },
      ),
    ),
  );
}
