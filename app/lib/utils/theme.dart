import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// [ CustomTheme ] is a class that contains the theme for the app.
class MimosaTheme {
  /// [ Defining Colors ]
  static const Color white = Colors.white;
  static const Color black = Color(0xff060812);
  static const Color grey = Colors.grey;

  static const Color lightRed = Color(0xFFBC1114);
  static const Color lightBg = Color.fromARGB(255, 210, 162, 217);

  static const Color feedBlue = Color(0xFF182C51);
  static const Color videoRed = Color(0xFFFF0000);
  static const Color iconColor = Color(0xFF34435E);
  // static const Color updateOrange = Color(0xFFEF6D3D);

  static ThemeData get theme => ThemeData(
        /// [ Color Theme ] for the app.
        primaryColor: white,
        colorScheme: const ColorScheme.light(
          primary: white,
          secondary: lightBg,
        ),

        /// [ Text Theme ] for the app.
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.lato(
            fontSize: 20,
            color: MimosaTheme.black,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: GoogleFonts.lato(
            fontSize: 16,
            color: MimosaTheme.white,
          ),
          bodyMedium: GoogleFonts.lato(
            fontSize: 14,
            color: MimosaTheme.black,
          ),
        ),

        /// [ App Bar Theme ] for the app.
        appBarTheme:
            const AppBarTheme(centerTitle: true, color: Color(0xFF29B6F6)),

        /// [ Bottom Navigation Bar Theme ]
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: MimosaTheme.feedBlue,
          selectedItemColor: MimosaTheme.white,
          unselectedItemColor: MimosaTheme.white,
          showUnselectedLabels: false,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: MimosaTheme.white),
          unselectedIconTheme: IconThemeData(color: Colors.white),
        ),

        /// [ Scaffold Background Color ] for the app.
        scaffoldBackgroundColor: MimosaTheme.white,
      );
}
