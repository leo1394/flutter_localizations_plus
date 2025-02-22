
## flutter_locations_plus
[![pub package](https://img.shields.io/pub/v/flutter_localizations_plus.svg)](https://pub.dev/packages/flutter_localizations_plus)
[![pub points](https://img.shields.io/pub/points/flutter_localizations_plus?color=2E8B57&label=pub%20points)](https://pub.dev/packages/flutter_localizations_plus/score)
[![GitHub Issues](https://img.shields.io/github/issues/leo1394/flutter_localizations_plus.svg?branch=master)](https://github.com/leo1394/flutter_localizations_plus/issues)
[![GitHub Forks](https://img.shields.io/github/forks/leo1394/flutter_localizations_plus.svg?branch=master)](https://github.com/leo1394/flutter_localizations_plus/network)
[![GitHub Stars](https://img.shields.io/github/stars/leo1394/flutter_localizations_plus.svg?branch=master)](https://github.com/leo1394/flutter_localizations_plus/stargazers)
[![GitHub License](https://img.shields.io/badge/license-MIT%20-blue.svg)](https://raw.githubusercontent.com/leo1394/flutter_localizations_plus/master/LICENSE)

An enhanced Flutter localization solution that streamlines multilingual integration for seamless app development.

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
- IMPORTANT: [locale] directory which contains json files MUST declared in pubspec.yaml. 
```yaml
    flutter:
       assets:
          - locale/     # for multiple languages
```

- Initializes [Translations] with `supported` locales and optional parameters.
```dart
    List<Map<String, dynamic>> formatted = Translations.supported([
      Localization.en_US, 
      Localization.zh_Hans, 
      Localization.fr_CA, 
      Localization.pt_BR
    ], selected: Localization.zh_Hans, fallback: Localization.en_US);
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

- Retrieve locale JSON strings by [key]
```dart
    // 1. Uses sprintf-style ordered arguments for dynamic formatting.
    Translations.of(context).text("local_time_caption", DateTime.now());
    Translations.of(context).text("flight_broadcast_test", ["flutter_localizations_plus", "pub.dev"]);
    
    // 2. Fetches raw string in locale file
    Translations.of(context).text("welcome_tips");
    
```

- Manually updates app's locale (e.g., from UI language settings page selections).
```dart
    String locale = Localization.fr_CA;
    await Translations.changeLanguage(locale);
```

## Additional information
Feel free to file an issue if you have any problem.
