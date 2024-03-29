import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DarkTheme {
  ThemeData? darkTheme;
  static const Color colorBrand = Colors.blueGrey;

  DarkTheme() {
    darkTheme = ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      primaryColor: colorBrand,
      primaryColorLight: colorBrand,
      primaryColorDark: colorBrand,
      scaffoldBackgroundColor: const Color(0xFF000000),
      iconTheme: const IconThemeData(
        color: colorBrand,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: colorBrand,
        iconTheme: IconThemeData(color: Colors.white),
        actionsIconTheme: IconThemeData(color: Colors.white),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
      ),
      cardTheme: const CardTheme(
        color: Color(0xFF1C1E1D),
        elevation: 0,
        shadowColor: Color(0xFF1C1E1D),
        margin: EdgeInsets.zero,
      ),
      buttonTheme: const ButtonThemeData(
        textTheme: ButtonTextTheme.accent,
        colorScheme: ColorScheme(
          primary: colorBrand,
          secondary: colorBrand,
          surface: colorBrand,
          background: colorBrand,
          error: colorBrand,
          onPrimary: colorBrand,
          onSecondary: colorBrand,
          onSurface: colorBrand,
          onBackground: colorBrand,
          onError: colorBrand,
          brightness: Brightness.light,
        ),
        disabledColor: Color(0xff828282),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: colorBrand,
        splashColor: Colors.transparent,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
            (Set<MaterialState> states) {
          return const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          );
        }),
        minimumSize: MaterialStateProperty.resolveWith<Size>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return const Size(double.infinity, 50.0);
            }
            if (states.contains(MaterialState.pressed)) {
              return const Size(double.infinity, 50.0);
            }
            return const Size(double.infinity, 50.0);
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.grey;
          }
          if (states.contains(MaterialState.pressed)) {
            return colorBrand;
          }
          return colorBrand;
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) return Colors.white;
          return Colors.white; // Defer to the widget's default.
        }),
      )),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
            (Set<MaterialState> states) {
          return const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          );
        }),
        minimumSize: MaterialStateProperty.resolveWith<Size>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return const Size(double.infinity, 50.0);
            }
            if (states.contains(MaterialState.pressed)) {
              return const Size(double.infinity, 50.0);
            }
            return const Size(double.infinity, 50.0);
          },
        ),
        overlayColor: MaterialStateColor.resolveWith(
          (states) => colorBrand.withOpacity(0.5),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.transparent;
          }
          return Colors.transparent;
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return colorBrand;
          }
          return colorBrand;
        }),
      )),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: colorBrand, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.red, width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        hintStyle: TextStyle(color: Colors.red),
        alignLabelWithHint: true,
        suffixStyle: TextStyle(color: Colors.grey),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
        side: MaterialStateProperty.resolveWith<BorderSide>(
            (Set<MaterialState> states) {
          return const BorderSide(
            color: colorBrand,
            width: 1,
          );
        }),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
            (Set<MaterialState> states) {
          return const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          );
        }),
        minimumSize: MaterialStateProperty.resolveWith<Size>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return const Size(double.infinity, 50.0);
            }
            if (states.contains(MaterialState.pressed)) {
              return const Size(double.infinity, 50.0);
            }
            return const Size(double.infinity, 50.0);
          },
        ),
        overlayColor: MaterialStateColor.resolveWith(
          (states) => colorBrand.withOpacity(0.5),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return colorBrand;
          }
          return Colors.transparent;
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return colorBrand;
          }
          return colorBrand; // Defer to the widget's default.
        }),
      )),
      listTileTheme: const ListTileThemeData(
        selectedColor: colorBrand,
        iconColor: colorBrand,
        tileColor: Colors.transparent,
        selectedTileColor: Colors.transparent,
        textColor: colorBrand,
        enableFeedback: true,
        style: ListTileStyle.drawer,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          return colorBrand;
        }),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          return colorBrand;
        }),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          return colorBrand;
        }),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          return colorBrand;
        }),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: Color(0xFFEEEEEE),
          fontFamily: 'SFProDisplay',
        ),
        displayMedium: TextStyle(
          color: Color(0xFFEEEEEE),
          fontFamily: 'SFProDisplay',
        ),
        displaySmall: TextStyle(
          color: Color(0xFFEEEEEE),
          fontFamily: 'SFProDisplay',
        ),
        headlineMedium: TextStyle(
          color: Color(0xFFEEEEEE),
          fontFamily: 'SFProDisplay',
        ),
        headlineSmall: TextStyle(
          color: Color(0xFFEEEEEE),
          fontFamily: 'SFProDisplay',
        ),
        titleLarge: TextStyle(
          color: Color(0xFFEEEEEE),
          fontFamily: 'SFProDisplay',
        ),
        titleMedium: TextStyle(
          color: Color(0xFFBDBDBD),
          fontFamily: 'SFProDisplay',
        ),
        titleSmall: TextStyle(
          color: Color(0xFFBDBDBD),
          fontFamily: 'SFProDisplay',
        ),
        bodyLarge: TextStyle(
          color: Color(0xFFBDBDBD),
          fontFamily: 'SFProDisplay',
        ),
        bodyMedium: TextStyle(
          color: Color(0xFFBDBDBD),
          fontFamily: 'SFProDisplay',
        ),
        labelLarge: TextStyle(
          color: Color(0xFFBDBDBD),
          fontFamily: 'SFProDisplay',
        ),
        bodySmall: TextStyle(
          color: Color(0xFFBDBDBD),
          fontFamily: 'SFProDisplay',
        ),
        labelSmall: TextStyle(
          color: Colors.white,
          fontFamily: 'SFProDisplay',
        ),
      ),
      colorScheme: const ColorScheme(
        primary: colorBrand,
        secondary: colorBrand,
        surface: colorBrand,
        background: Color(0xFF000000),
        error: colorBrand,
        onPrimary: colorBrand,
        onSecondary: colorBrand,
        onSurface: colorBrand,
        onBackground: colorBrand,
        onError: colorBrand,
        brightness: Brightness.light,
      ),
    );
  }

  get() {
    return darkTheme;
  }
}
