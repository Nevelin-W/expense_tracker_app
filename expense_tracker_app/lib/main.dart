import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widgets/expenses.dart';
// import 'package:flutter/services.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromRGBO(241, 80, 37, 1));

/* var kLAlternativeColorTheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(246, 8, 40, 66),
  brightness: Brightness.dark,
);
 */
var appBarTheme = const AppBarTheme().copyWith(
  backgroundColor: const Color.fromRGBO(241, 80, 37, 1),
  foregroundColor: const Color.fromRGBO(25, 25, 25, 1),
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
  color: const Color.fromRGBO(241, 80, 37, 1),
  surfaceTintColor: const Color.fromRGBO(230, 232, 230, 1),
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
    backgroundColor: const Color.fromRGBO(241, 80, 37, 1),
    foregroundColor: const Color.fromRGBO(25, 25, 25, 1),
  ),
);

/* var alternativeElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: kLAlternativeColorTheme.scrim,
  ),
);
 */

void main() {
  /* WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) { */
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
        scaffoldBackgroundColor: const Color.fromRGBO(25, 25, 25, 1),
        cardTheme: cardTheme,
        snackBarTheme: const SnackBarThemeData().copyWith(
          backgroundColor: const Color.fromRGBO(25, 25, 25, 1),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: const TextStyle(
                color: Color.fromRGBO(25, 25, 25, 1),
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              titleMedium: const TextStyle(
                color: Color.fromRGBO(25, 25, 25, 1),
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
              titleSmall: const TextStyle(
                color: Color.fromRGBO(25, 25, 25, 1),
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
      ),
      /*  themeMode: ThemeMode.light, */
      home: const Expenses(),
    ),
  );
  /*  }); */
}
