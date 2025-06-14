// Copyright (c) 2025, the Dart project authors. Use of this source code
// is governed by a MIT license that can be found in the LICENSE file.

import 'package:flutter_localizations_plus/src/locales.dart';
import 'json_serializable.dart';

/// locale configuration including locale code and json file path .etc
class LocaleConfig implements JsonSerializable {
  late String locale;
  late String abbr;
  late String region;
  late String name;
  late String l10n;
  late bool fallback;

  LocaleConfig(String locale, String l10n,
      {String? abbr, String? region, String? name, bool fallback = false}) {
    this.locale = locale;
    this.l10n = l10n;
    this.abbr = abbr ?? locale.split("_")[0];
    this.region = region ?? locale.replaceAll("${this.abbr}_", "");
    this.name = name ?? all_locales_supported[locale] ?? "unknown";
    this.fallback = fallback;
  }

  factory LocaleConfig.fromJson(Map<String, dynamic> srcJson) =>
      LocaleConfig(srcJson["locale"], srcJson["l10n"]);

  @override
  Map<String, dynamic> toJson() => ({
        "locale": this.locale,
        "l10n": this.l10n,
        "abbr": this.abbr,
        "region": this.region,
        "name": this.name,
        "fallback": this.fallback
      });
}
