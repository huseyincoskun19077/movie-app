import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFFE50914);
  static const Color primaryDark = Color(0xFF6F060B);
  static const Color secondary = Color(0xFF5949E6);
  
  // Background & Surface
  static const Color background = Color(0xFF090909);
  static const Color surface = Color(0xFF000000);
  
  // White Tones
  static const Color white = Color(0xFFFFFFFF);
  static const Color white90 = Color(0xE6FFFFFF); // 90% opacity
  static const Color white80 = Color(0xCCFFFFFF); // 80% opacity
  static const Color white70 = Color(0xB3FFFFFF); // 70% opacity
  static const Color white60 = Color(0x99FFFFFF); // 60% opacity
  static const Color white50 = Color(0x80FFFFFF); // 50% opacity
  static const Color white40 = Color(0x66FFFFFF); // 40% opacity
  static const Color white30 = Color(0x4Dffffff); // 30% opacity
  static const Color white20 = Color(0x33FFFFFF); // 20% opacity
  static const Color white10 = Color(0x1AFFFFFF); // 10% opacity
  static const Color white5 = Color(0x0DFFFFFF);  // 5% opacity
  
  // Alert & Status Colors
  static const Color success = Color(0xFF00C247);
  static const Color info = Color(0xFF004CE8);
  static const Color warning = Color(0xFFFFBE16);
  static const Color error = Color(0xFFF47171);
  
  // Others
  static const Color black = Color(0xFF000000);
  
  // Gradient Colors
  static const Color gradientStart = Color(0xFF3F0306);
  static const Color gradientEnd = Color(0xFF090909);
  
  // Text Colors (mapped to white tones)
  static const Color textPrimary = white;
  static const Color textSecondary = white70;
  static const Color textTertiary = white50;
  static const Color textQuaternary = white30;
  
  // UI Elements
  static const Color onPrimary = white;
  static const Color onSecondary = white;
  static const Color onSurface = white;
  static const Color divider = white10;
  
  // Background Gradient
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [gradientStart, gradientEnd],
  );
}
