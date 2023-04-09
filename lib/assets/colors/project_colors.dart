import 'package:flutter/material.dart';

/// цветовые ресурсы проекта
abstract class ProjectColors {
  static const Color textColorPrimary = _black;

  static const Color textColorSecondary = _grey;

  static const Color textColorSecondarySubTitle = _greyLight;

  static const Color activeColor = _blue;

  static const Color iconColor = _white;

  static const Color btnColor = _black;

  static const Color borderColor = _greyLighest;

  static const Color screenBackgroundColor = _brightGrey;

  static const Color appBarBackgroundColor = _darkGrey;

  static const Color inputBackgroundColor = _greyTr;

  /// Палитра проекта
  static const Color _darkGrey = Color.fromRGBO(249, 249, 249, 0.94);

  static const Color _brightGrey = Color.fromRGBO(247, 248, 250, 1);

  static const Color _black = Color.fromRGBO(0, 0, 0, 1);

  static const Color _grey = Color.fromRGBO(115, 115, 115, 1);

  static const Color _greyLight = Color.fromRGBO(163, 163, 163, 1);

  static const Color _greyLighest = Color.fromRGBO(232, 232, 232, 1);

  static const Color _white = Color.fromRGBO(250, 250, 250, 1);

  static const Color _blue = Color.fromRGBO(52, 120, 246, 1);

  static const Color _greyTr = Color.fromRGBO(118, 118, 128, 0.12);
}
