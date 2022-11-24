import 'package:flutter/material.dart';

/// extensions for our built-in classes, this adds extra functionality to the classes

extension BuildContextExtension on BuildContext {
  /// when context.colorScheme is called, Theme.of(context).colorScheme is returned

  ThemeData get theme => Theme.of(this);

  /// current colorScheme
  ColorScheme get colorScheme => theme.colorScheme;

  /// media queries
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  ///height
  double get height => mediaQuery.size.height;

  ///width
  double get width => mediaQuery.size.width;
}
