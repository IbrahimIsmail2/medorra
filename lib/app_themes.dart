// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// final lightTheme = ThemeData(
//   brightness: Brightness.light,
//   scaffoldBackgroundColor: const Color(0xffF5F3F3),
//   appBarTheme: const AppBarTheme(
//     backgroundColor: Color(0xffEFF1F1),
//     foregroundColor: Colors.black,
//   ),
//   textTheme: GoogleFonts.robotoCondensedTextTheme(),
// );

// final darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   scaffoldBackgroundColor: const Color(0xff1E1E1E),
//   appBarTheme: const AppBarTheme(
//     backgroundColor: Color(0xff121212),
//     foregroundColor: Colors.white,
//   ),
//   textTheme: GoogleFonts.robotoCondensedTextTheme(ThemeData.dark().textTheme),
// );

// lib/app_themes.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xff6DAFDD),
    brightness: Brightness.light, // ✅ أضفها هنا لتطابق ThemeData
  ),
  textTheme: GoogleFonts.robotoCondensedTextTheme(),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xff6DAFDD),
    brightness: Brightness.dark, // ✅ أضفها هنا لتطابق ThemeData
  ),
  textTheme: GoogleFonts.robotoCondensedTextTheme(ThemeData.dark().textTheme),
);
