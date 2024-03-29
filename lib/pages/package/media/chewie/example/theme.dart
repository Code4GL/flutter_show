import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    disabledColor: Colors.grey.shade400,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    disabledColor: Colors.grey.shade400,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
  );
}
