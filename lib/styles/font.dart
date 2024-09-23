import 'package:flutter/material.dart';
import '../styles/colors.dart';

class AppTextStyles {
  static TextStyle title = TextStyle(
    color: AppColors.white,
    fontSize: 50,
    fontFamily: 'SegoeUI',
    fontVariations: [FontVariation('wght', 700)],
  );

  static TextStyle titleSmall = TextStyle(
    color: AppColors.white,
    fontSize: 30,
    fontFamily: 'SegoeUI',
    fontVariations: [FontVariation('wght', 700)],
  );

  static const TextStyle task = TextStyle(
    fontSize: 18,
    fontFamily: 'SegoeUI',
    fontVariations: [FontVariation('wght', 600)],
  );

  static TextStyle briefTitle = TextStyle(
    fontFamily: 'SegoeUI',
    fontVariations: [FontVariation('wght', 700)],
    fontSize: 22,
  );

  static TextStyle briefText = TextStyle(
    fontFamily: 'SegoeUI',
    fontVariations: [FontVariation('wght', 500)],
    fontSize: 22,
  );
  static TextStyle briefLargeText = TextStyle(
    fontFamily: 'SegoeUI',
    fontVariations: [FontVariation('wght', 500)],
    fontSize: 27,
  );

  static TextStyle buttonText = TextStyle(
    fontFamily: 'SegoeUI',
    fontVariations: [FontVariation('wght', 500)],
    fontSize: 22,
  );
  static TextStyle FieldText = TextStyle(
    fontFamily: 'SegoeUI',
    fontVariations: [FontVariation('wght', 400)],
    fontSize: 18,
    color: appScheme.onSurface,
  );
}
