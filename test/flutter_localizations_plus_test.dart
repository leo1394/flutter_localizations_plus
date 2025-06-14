// Copyright (c) 2025, the Dart project authors. Use of this source code
// is governed by a MIT license that can be found in the LICENSE file.
import 'package:flutter/material.dart';
import 'package:flutter_localizations_plus/locale_config.dart';
import 'package:flutter_localizations_plus/localization.dart';
import 'package:flutter_localizations_plus/flutter_localizations_plus.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {
    List<String> localesSupported = [
      Localization.en_US,
      Localization.zh_Hans,
      Localization.fr_CA,
      Localization.pt_BR
    ];
    String localeSelected = Localization.zh_Hans;
    List<LocaleConfig> formatted =
        Translations.support(localesSupported, selected: localeSelected);
    print(
        "all locale supported ==> ${formatted.map((conf) => conf.toJson()).toList()}, locale ==> ${Translations.supportedLocales}");
  });

  test('Locale delegate provides list of locale codes', () {
    expect(Translations.supportedLocales, isNotEmpty);
  });

  test('Translation provides list of locale config Map<String, dynamic>', () {
    expect(Translations.allSupported, isNotEmpty);
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: Translations.supportedLocales,
      localizationsDelegates: const [
        LocalizationsPlusDelegate(),
        FallbackCupertinoLocalizationsDelegate()
        // ... more localization delegates
      ],
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(Translations.of(context).text("flight_broadcast_test",
                ["flutter_localizations_plus", "pub.dev"])),
          ),
          Text(Translations.of(context).text("welcome_tips")),
          Text(Translations.of(context)
              .text("local_time_caption", DateTime.now())),
        ],
      ),
    );
  }
}
