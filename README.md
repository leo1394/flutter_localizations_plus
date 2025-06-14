
## flutter_localizations_plus
[![pub package](https://img.shields.io/pub/v/flutter_localizations_plus.svg)](https://pub.dev/packages/flutter_localizations_plus)
[![pub points](https://img.shields.io/pub/points/flutter_localizations_plus?color=2E8B57&label=pub%20points)](https://pub.dev/packages/flutter_localizations_plus/score)
[![GitHub Issues](https://img.shields.io/github/issues/leo1394/flutter_localizations_plus.svg?branch=master)](https://github.com/leo1394/flutter_localizations_plus/issues)
[![GitHub Forks](https://img.shields.io/github/forks/leo1394/flutter_localizations_plus.svg?branch=master)](https://github.com/leo1394/flutter_localizations_plus/network)
[![GitHub Stars](https://img.shields.io/github/stars/leo1394/flutter_localizations_plus.svg?branch=master)](https://github.com/leo1394/flutter_localizations_plus/stargazers)
[![GitHub License](https://img.shields.io/badge/license-MIT%20-blue.svg)](https://raw.githubusercontent.com/leo1394/flutter_localizations_plus/master/LICENSE)

An enhanced Flutter localization one-stop solution that streamlines multilingual integration for seamless app development.

## Platform Support

| Android | iOS | MacOS | Web | Linux | Windows |
| :-----: | :-: | :---: |:---:| :---: | :-----: |
|   ✅    | ✅  |  ✅   |  ✅   |  ✅   |   ✅    |

## Requirements

- Flutter >=3.0.0 <4.0.0
- Dart: ^2.17.0
- sprintf: ^7.0.0

## Getting started
published on pub.dev, run this Flutter command
```shell
flutter pub add flutter_localizations_plus
```

## Steps for Usage in Dart
- IMPORTANT: [locales] directory which contains [locale] JSON files MUST declared in pubspec.yaml. 
```yaml
    flutter:
       assets:
          - locales/     # for multiple languages
```

- [locale] JSON file named after `${languageCode}_${localeCode}.json` eg. `en_US.json`.
```json
{
  "@@locale": "en_US",
  "welcome_tips": "You don’t know about me, without you have read a book by the name of The Adventures of Tom Sawyer; but that ain’t no matter. That book was made by Mr. Mark Twain, and he told the truth, mainly. There was things which he stretched, but mainly he told the truth.",
  "local_time_caption": "Current local time: %s",
  "flight_broadcast_test": "Hello %s from %s."
}
```

- Initializes [Translations] with locales need to support and other optional parameters.
- IMPORTANT: Ensure [locales] supported JSON files are present in the `locales/` directory.
```dart
  // [{locale, name, abbr, region, i10n, fallback}] e.g. [{locale: "en_US", name: "English (United States)", abbr: "en", region: "US"}]
    List<Map<String, dynamic>> formatted = Translations.support([
      Localization.en_US, 
      Localization.zh_Hans, 
      Localization.fr_CA, 
      Localization.pt_BR
    ], selected: Platform.localeName, fallback: Localization.en_US);
```

- Add delegates (`LocalizationsPlusDelegate` and `FallbackCupertinoLocalizationsDelegate`) to localizationsDelegates and assign supportedLocales with Translations.supportedLocales for WidgetsApp Created. 
```dart
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
```

- Retrieve locale JSON strings by [key] with support sprintf-style arguments
```dart
    // 1. Use sprintf-style ordered arguments for dynamic formatting.
    Translations.of(context).text("local_time_caption", DateTime.now());
    Translations.of(context).text("flight_broadcast_test", ["flutter_localizations_plus", "pub.dev"]);
    
    // 2. Fetches raw string in locale file
    Translations.of(context).text("welcome_tips");
    
```

- Manually updates app's locale (e.g., from UI language settings page selections).
```dart
    // [{locale, name, abbr, region, i10n, fallback}] e.g. [{locale: "en_US", name: "English (United States)", abbr: "en", region: "US"}]
    List<LocaleConfig> allSupported = Translations.allSupported;
    int idxSelected = 1;
    String locale = allSupported[idxSelected].locale; // Localization.en_US;
    await Translations.changeLanguage(locale);
```

## Additional information
Feel free to file an issue if you have any problem.
