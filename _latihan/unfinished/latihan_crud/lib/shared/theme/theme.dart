import 'package:google_fonts/google_fonts.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import 'package:flutter/material.dart';

ThemeData getDefaultTheme() {
  return ThemeData().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      titleTextStyle: GoogleFonts.lato(
        color: Colors.blueGrey[700],
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey[700],
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blueGrey[900]!,
    ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.blueGrey[900]!,
    ),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.roboto(
        color: Colors.blueGrey[900],
      ),
      titleMedium: GoogleFonts.roboto(
        color: Colors.blueGrey[900],
      ),
      titleLarge: GoogleFonts.roboto(
        color: Colors.blueGrey[900],
      ),
      bodyLarge: GoogleFonts.roboto(
        color: Colors.blueGrey[900],
      ),
      bodySmall: GoogleFonts.roboto(
        color: Colors.blueGrey[900],
      ),
      bodyMedium: GoogleFonts.roboto(
        color: Colors.blueGrey[900],
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hoverColor: Colors.transparent,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: Colors.grey[300]!,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: Colors.grey[300]!,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
      filled: true,
      fillColor: Color(0xfffbfbfb),
    ),
  );
}
