// Copyright (c) 2025, the Dart project authors. Use of this source code
// is governed by a MIT license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter_localizations_plus/locale_config.dart';
import 'package:sprintf/sprintf.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'locales.dart';

/// A type localized resource class which should init `supported` before use.
///
/// NOTE: [locales] directory which contains json files MUST declared in pubspec.yaml
///
///     flutter:
///        assets:
///          - locales/     # for multiple languages
///
class Translations {
  /// current locale loaded
  Locale? locale;
  static Translations? _instance;
  static Map<String, dynamic>? _localizedValues; //当前语言
  static Map<String, dynamic>? _fallbackLocalizedValues; // 默认语言 map
  static List<LocaleConfig>? _localeSupportedArr;
  static LocaleConfig? _fallback;
  static LocaleConfig? _selected;

  /// StreamController for stream subscription listening language changed in `Translations`
  static final StreamController<LocaleConfig> controller =
      StreamController<LocaleConfig>();

  Translations(Locale this.locale);

  /// References to the localized resources defined by [Translations]
  static Translations of(BuildContext context) {
    _instance ??= Localizations.of<Translations>(context, Translations);
    return _instance!;
  }

  /// Retrieve locale JSON strings by [key]
  /// Usage examples:
  ///
  /// 1. Uses sprintf-style ordered arguments for dynamic formatting.
  /// ```
  ///     Translations.of(context).text("local_time_caption", DateTime.now());
  ///     Translations.of(context).text("flight_broadcast_test", [ departure, arrival ] );
  /// ```
  /// 2. Fetches raw string in locale file
  /// ```dart
  ///   Translations.of(context).text("welcome_tips");
  /// ```
  String text(String key, [var args]) {
    String fmt = "";
    try {
      String? value = _localizedValues?[key];
      fmt = (value == null || value.isEmpty) ? _defaultText(key) : value;
    } catch (e) {
      fmt = _defaultText(key);
    }
    if (args != null && args is! List) {
      args = [args];
    }
    return args != null && args.isNotEmpty ? sprintf(fmt, args) : fmt;
  }

  /// Start loading the resources for `locale`. The returned future completes
  /// when the resources have finished loading.
  static Future<Translations> load(Locale locale) async {
    assert(_fallback != null,
        "initialize [Translations] through function `supported` before use");
    if (_instance != null) {
      return _instance!;
    }

    String localeName = Platform.localeName;
    Map<String, dynamic> supportedDefaultLocale = _fallback!.toJson();
    Map<String, dynamic>? supportedSelectedLocale = _selected?.toJson();
    // priority order: locale specified > platform language settings > Translations fallback locale
    List<String> localeOptions =
        _localeSupportedArr!.map<String>((item) => item.locale).toList();

    String selected = [
      supportedSelectedLocale?["locale"],
      locale.toString(),
      localeName,
      supportedDefaultLocale["locale"]
    ].firstWhere((element) => localeOptions.contains(element));
    LocaleConfig localeSelected = _localeSupportedArr!
        .firstWhere((element) => element.locale == selected);

    String l10nJsonFile = localeSelected.l10n;
    _localizedValues = await _loadJsonFile(l10nJsonFile);
    locale = Locale(localeSelected.abbr, localeSelected.region);
    Translations translations = Translations(locale);
    return translations;
  }

  /// getter function of all standard locale list of Map filtered by `supported`
  static get allSupported => _localeSupportedArr;

  /// stream subscription for listening language changed in `Translations`
  static get streamSubscription => controller.stream.listen(null);

  /// getter function of fallback locale if no text found in selected locale json file
  static get fallback => _fallback;

  /// getter function of current locale selected
  static get selected => _selected;

  /// getter function of Iterate of Locale for [MaterialApp] `supportedLocales` configuration
  static get supportedLocales => _localeSupportedArr
      ?.map<Locale>((element) => new Locale(element.abbr, element.region));

  /// Initializes [Translations] with locale need to support and optional parameters.
  ///
  /// - [locales]: List of supported language codes (e.g., `zh_Hans`, `en_US`, `fr_CA`).
  /// - [fallback]: Optional fallback locale. Defaults to the first item in [locales] if not specified.
  /// - [selected]: Optional language code to switch to once locale resources are loaded.
  static List<LocaleConfig> support(List<String> locales,
      {String? fallback, String? selected}) {
    List<String> filtered = locales
        .where((locale) => all_locales_supported.containsKey(locale))
        .toList();
    if (filtered.isEmpty) {
      throw Exception("no valid Locale for support !");
    }

    String osLocaleName = Platform.localeName;
    _localeSupportedArr = filtered
        .asMap()
        .entries
        .map((entry) {
          int index = entry.key;
          String locale = entry.value;
          String filepath = "locales/$locale.json";
          bool canItBeFallback =
              (fallback == null || !filtered.contains(fallback)) &&
                      index == 0 ||
                  locale == fallback;
          LocaleConfig config =
              LocaleConfig(locale, filepath, fallback: canItBeFallback);
          return config;
        })
        .cast<LocaleConfig>()
        .toList();
    _fallback = _localeSupportedArr!.firstWhere(
        (element) => element.fallback == true,
        orElse: () => _localeSupportedArr!.first);
    Future.delayed(Duration.zero, () async {
      _fallbackLocalizedValues = await _loadJsonFile(_fallback!.l10n);
    });

    // initialize with current selected locale specified
    selected ??= osLocaleName;
    List<String> localesSupported = _localeSupportedArr!
        .map((element) => element.locale)
        .cast<String>()
        .toList();

    List<String>? fuzzyFiltered;
    if (selected.split("_").length > 2) {
      String simplified = selected.replaceAll(RegExp(r'_[a-zA-Z]+$'), "");
      fuzzyFiltered =
          localesSupported.where((element) => element == simplified).toList();
    }

    fuzzyFiltered = (fuzzyFiltered == null || fuzzyFiltered.isEmpty)
        ? localesSupported
            .where((element) =>
                element.split("_").first == selected!.split("_").first)
            .toList()
        : fuzzyFiltered;

    if (!localesSupported.contains(selected)) {
      selected =
          fuzzyFiltered.isNotEmpty ? fuzzyFiltered.first : _fallback!.locale;
    }
    _selected = _localeSupportedArr!.firstWhere(
        (element) => element.locale == selected,
        orElse: () => _fallback!);
    Future.delayed(
        const Duration(milliseconds: 150), () => changeLanguage(selected!));
    return _localeSupportedArr!;
  }

  /// Manually updates app's locale (e.g., from UI language settings page selections).
  /// - [locale]: Language code (e.g. `zh_Hans`, `en_US`) supported by [Localization].
  static changeLanguage(String locale) async {
    LocaleConfig localeConf = _localeSupportedArr!.firstWhere(
        (element) => element.locale == locale,
        orElse: () => _fallback!);
    _localizedValues = await _loadJsonFile(localeConf.l10n);
    _selected = localeConf;
    controller.add(localeConf);
  }

  /// Load locale json file by rootBundle
  static Future<Map<String, dynamic>> _loadJsonFile(String filepath) async {
    String jsonContent = await rootBundle.loadString(filepath);
    return json.decode(jsonContent);
  }

  String _defaultText(String key) => _fallbackLocalizedValues?[key] ?? key;
}
