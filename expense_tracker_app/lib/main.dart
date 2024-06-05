import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: const Color(0xff18b49b));

/* var kLAlternativeColorTheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(246, 8, 40, 66),
  brightness: Brightness.dark,
);
 */
var appBarTheme = const AppBarTheme().copyWith(
  backgroundColor: kColorScheme.primaryFixedDim,
  foregroundColor: kColorScheme.scrim,
  elevation: 5,
  shadowColor: kColorScheme.shadow,
  toolbarHeight: 50,
);

/* var alternativeAppBarTheme = const AppBarTheme().copyWith(
  backgroundColor: kLAlternativeColorTheme.primary,
  foregroundColor: kLAlternativeColorTheme.scrim,
  elevation: 5,
  shadowColor: kLAlternativeColorTheme.shadow,
  toolbarHeight: 50,
); */

var cardTheme = const CardTheme().copyWith(
  color: kColorScheme.inversePrimary,
  surfaceTintColor: kColorScheme.secondary,
  elevation: 5,
  margin: const EdgeInsets.symmetric(
    horizontal: 15,
    vertical: 6,
  ),
);

/* var alternativeCardTheme = const CardTheme().copyWith(
  color: kLAlternativeColorTheme.inversePrimary,
  surfaceTintColor: kLAlternativeColorTheme.secondary,
  elevation: 5,
  margin: const EdgeInsets.symmetric(
    horizontal: 15,
    vertical: 6,
  ),
); */

var elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: kColorScheme.primaryFixed,
  ),
);

/* var alternativeElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: kLAlternativeColorTheme.scrim,
  ),
);
 */

void main() {
  runApp(
    MaterialApp(
      /* darkTheme: ThemeData.dark().copyWith(
        colorScheme: kLAlternativeColorTheme,
        cardTheme: alternativeCardTheme,
        appBarTheme: alternativeAppBarTheme,
        elevatedButtonTheme: alternativeElevatedButtonTheme,
      ), */
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: appBarTheme,
        elevatedButtonTheme: elevatedButtonTheme,
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
      /*  themeMode: ThemeMode.light, */
      home: const Expenses(),
    ),
  );
}
