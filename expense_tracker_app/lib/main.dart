import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: const Color(0xff18b49b));
var appBarTheme = const AppBarTheme().copyWith(
  backgroundColor: kColorScheme.tertiaryFixedDim,
  foregroundColor: kColorScheme.scrim,
  elevation: 5,
  shadowColor: kColorScheme.shadow,
  toolbarHeight: 50,
  /*  titleTextStyle: TextStyle(
    color: kColorScheme.onTertiaryContainer,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  ), */
);
var cardTheme = const CardTheme().copyWith(
  color: kColorScheme.onTertiary,
  surfaceTintColor: kColorScheme.secondary,
  elevation: 5,
  margin: const EdgeInsets.symmetric(
    horizontal: 15,
    vertical: 6,
  ),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: appBarTheme,
          scaffoldBackgroundColor: kColorScheme.onTertiaryContainer,
          cardTheme: cardTheme,
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                  color: kColorScheme.onTertiaryContainer,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                titleMedium: TextStyle(
                  color: kColorScheme.scrim,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                titleSmall: TextStyle(
                  color: kColorScheme.scrim,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
          ),
      home: const Expenses(),
    ),
  );
}
