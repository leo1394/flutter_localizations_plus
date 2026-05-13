
## flutter_localizations_plus
[![pub package](https://img.shields.io/pub/v/flutter_localizations_plus.svg)](https://pub.dev/packages/flutter_localizations_plus)
[![pub points](https://img.shields.io/pub/points/flutter_localizations_plus?color=2E8B57&label=pub%20points)](https://pub.dev/packages/flutter_localizations_plus/score)
[![GitHub Issues](https://img.shields.io/github/issues/leo1394/flutter_localizations_plus.svg?branch=master)](https://github.com/leo1394/flutter_localizations_plus/issues)
[![GitHub Forks](https://img.shields.io/github/forks/leo1394/flutter_localizations_plus.svg?branch=master)](https://github.com/leo1394/flutter_localizations_plus/network)
[![GitHub Stars](https://img.shields.io/github/stars/leo1394/flutter_localizations_plus.svg?branch=master)](https://github.com/leo1394/flutter_localizations_plus/stargazers)
[![GitHub License](https://img.shields.io/badge/license-MIT%20-blue.svg)](https://raw.githubusercontent.com/leo1394/flutter_localizations_plus/master/LICENSE)

一站式增强型 Flutter 本地化解决方案，简化多语言集成，助力无缝应用开发。

语言: 中文 | [English](README-EN.md)
## 平台支持

| Android | iOS | MacOS | Web | Linux | Windows |
| :-----: | :-: | :---: |:---:| :---: | :-----: |
|   ✅    | ✅  |  ✅   |  ✅   |  ✅   |   ✅    |

## 环境要求

- Flutter >=3.0.0 <4.0.0
- Dart: ^2.17.0
- sprintf: ^7.0.0

## 快速开始
已发布在 pub.dev，可通过执行以下命令安装：
```shell
flutter pub add flutter_localizations_plus
```

## Dart 使用步骤
- 重要：包含多语言 JSON 文件的 `[locales]` 目录必须在 `pubspec.yaml` 中声明。
```yaml
    flutter:
       assets:
          - locales/     # 多语言文件夹
```

- 多语言 `[locale]` JSON 文件命名为 `${languageCode}_${localeCode}.json`，例如 `en_US.json`。
- 多语言[locale] JSON文件中文案支持符合`sprintf`规范的变量声明
```json
{
  "@@locale": "en_US",
  "welcome_tips": "You don’t know about me, without you have read a book by the name of The Adventures of Tom Sawyer; but that ain’t no matter. That book was made by Mr. Mark Twain, and he told the truth, mainly. There was things which he stretched, but mainly he told the truth.",
  "local_time_caption": "Current local time: %s",
  "flight_broadcast_test": "Hello %s from %s."
}
```

- 初始化 `[Translations]`，传入需要支持的语言及其他可选参数。
- 重要：确保受支持的 JSON 文件已放置在 `locales/` 目录中。
```dart
  // [{locale, name, abbr, region, i10n, fallback}] e.g. [{locale: "en_US", name: "English (United States)", abbr: "en", region: "US"}]
    List<Map<String, dynamic>> formatted = Translations.support([
      Localization.en_US, 
      Localization.zh_Hans, 
      Localization.fr_CA, 
      Localization.pt_BR
    ], selected: Platform.localeName, fallback: Localization.en_US);
```

- 在 `localizationsDelegates` 中添加 `LocalizationsPlusDelegate` 与 `FallbackCupertinoLocalizationsDelegate` 等委托；并将 `supportedLocales` 设为 `Translations.supportedLocales`。
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

- 通过键值获取本地化文案，支持 sprintf 风格的参数：
```dart
    // 1. Use sprintf-style ordered arguments for dynamic formatting.
    Translations.of(context).text("local_time_caption", DateTime.now());
    Translations.of(context).text("flight_broadcast_test", ["flutter_localizations_plus", "pub.dev"]);
    
    // 2. Fetches raw string in locale file
    Translations.of(context).text("welcome_tips");
    
    // 3. extension method for BuildContext
    // i18n() and l10n() alias for text() method, more concise and readable
    context.i18n("local_time_caption", DateTime.now());
    context.l10n("flight_broadcast_test", ["flutter_localizations_plus", "pub.dev"]);
    
```

- 手动更新应用的语言（例如在 UI 语言设置页进行选择）。
```dart
    // [{locale, name, abbr, region, i10n, fallback}] e.g. [{locale: "en_US", name: "English (United States)", abbr: "en", region: "US"}]
    List<LocaleConfig> allSupported = Translations.allSupported;
    int idxSelected = 1;
    String locale = allSupported[idxSelected].locale; // Localization.en_US;
    await Translations.changeLanguage(locale);
```

## 附加信息
如有任何问题，欢迎提交 issue。
