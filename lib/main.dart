import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:expensetracker/widget/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 99, 125));
void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((value) {});
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        foregroundColor: kDarkColorScheme.onPrimaryContainer,
        backgroundColor: kDarkColorScheme.primaryContainer,
      )),
      colorScheme: kDarkColorScheme,
      cardTheme: const CardTheme().copyWith(
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8)),
    ),
    themeMode: ThemeMode.system,
    theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        useMaterial3: true,
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.normal,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 14,
              ),
            ),
        cardTheme: const CardTheme().copyWith(
            margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer,
        )),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        )
        // scaffoldBackgroundColor: Colors.blueGrey,
        ),
    home: const Expenses(),
  ));
}
