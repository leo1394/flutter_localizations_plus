import 'package:flutter_localizations_plus/translations.dart';
import 'package:flutter/material.dart';

/// Extension to easily access translations from the BuildContext
extension TranslationsExtension on BuildContext {
  // Provides a convenient way to access the Translations instance and its text method
  get i18n => Translations.of(this).text;
  // Provides a convenient way to access the Translations instance and its text method
  get l10n => Translations.of(this).text;

  // Provides direct access to the Translations instance for more complex usage
  get translations => Translations.of(this);
}
