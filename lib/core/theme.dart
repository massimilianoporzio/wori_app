import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fontsizes {
  static const small = 12.0;
  static const standard = 14.0;
  static const standardUp = 16.0;
  static const medium = 20.0;
  static const large = 28.0;
}

class DefaultColors {
  static const Color greyText = Color(0xFFB3B9C9);
  static const Color whiteText = Color(0xFFFFFFFF);
  static const Color senderMessage = Color(0xFF7A8194);
  static const Color receivrMessage = Color(0xFF373E4E);
  static const Color sentMessageInput = Color(0xFF3D4354);
  static const Color messageListPage = Color(0xFF292F3F);
  static const Color buttonColor = Color(0xFF7A8194);
}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Color(0xFF1B202D),
      textTheme: TextTheme(
        titleMedium: GoogleFonts.alegreyaSans(
          fontSize: Fontsizes.medium,
          color: Colors.white,
        ),
        titleLarge: GoogleFonts.alegreyaSans(
          fontSize: Fontsizes.large,
          color: Colors.white,
        ),
        bodySmall: GoogleFonts.alegreyaSans(
          fontSize: Fontsizes.small,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.alegreyaSans(
          fontSize: Fontsizes.standard,
          color: Colors.white,
        ),
        bodyLarge: GoogleFonts.alegreyaSans(
          fontSize: Fontsizes.standardUp,
          color: Colors.white,
        ),
      ),
    );
  }
}