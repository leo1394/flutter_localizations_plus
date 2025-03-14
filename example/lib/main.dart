import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_localizations_plus/localization.dart';
import 'package:flutter_localizations_plus/flutter_localizations_plus.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<Map<String, dynamic>> formatted = Translations.support([
    Localization.en_US,
    Localization.zh_Hans,
    Localization.fr_CA,
    Localization.pt_BR
  ], selected: Platform.localeName, fallback: Localization.zh_Hans);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: Translations.supportedLocales,
      localizationsDelegates: [
        LocalizationsPlusDelegate(),
        FallbackCupertinoLocalizationsDelegate()
        // ... more localization delegates
      ],
      home: Home(),
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
