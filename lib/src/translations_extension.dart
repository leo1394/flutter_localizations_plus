import 'package:flutter_localizations_plus/translations.dart';
import 'package:flutter/material.dart';

/// A type definition for the translation callback function,
/// which takes a key and optional arguments and returns a localized string
typedef I18NCallback = String Function(String key, [dynamic args]);

/// Extension to easily access translations from the BuildContext
extension TranslationsExtension on BuildContext {
  /// Provides a convenient way to access the Translations instance and its text method
  I18NCallback get i18n => Translations.of(this).text;

  /// Provides a convenient way to access the Translations instance and its text method
  I18NCallback get l10n => Translations.of(this).text;

  /// Provides direct access to the Translations instance for more complex usage
  Translations get translations => Translations.of(this);
}
