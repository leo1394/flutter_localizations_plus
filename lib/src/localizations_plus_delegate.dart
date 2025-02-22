// Copyright (c) 2025, the Dart project authors. Use of this source code
// is governed by a MIT license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'translations.dart';

/// A delegate class of localized resources of type [Translations] implement abstract class
/// [LocalizationsDelegate], which can be loaded by a [Localizations] widget.
///
/// Typical applications have one [Localizations] widget which is created by the
/// [WidgetsApp] and configured with the app's `localizationsDelegates`
/// parameter (a list of delegates). The delegate's [type] is used to identify
/// the object created by an individual delegate's [load] method.
class LocalizationsPlusDelegate extends LocalizationsDelegate<Translations> {
  final AssetBundle? bundle;
  final String fallbackLocale;
  const LocalizationsPlusDelegate({this.bundle, this.fallbackLocale = "en_US"});

  /// Whether resources for the given locale can be loaded by this delegate.
  ///
  /// Return true if the instance of `Translations` loaded by this delegate's [load]
  /// method supports the given `locale`'s language.
  @override
  bool isSupported(Locale locale) {
    return Translations.allSupported.map((locale) => locale["locale"]).contains(locale.toString());
  }

  /// Start loading the resources for `locale`. The returned future completes
  /// when the resources have finished loading.
  ///
  /// It's assumed that this method will return an object that contains a
  /// collection of related string resources (typically defined with one method
  /// per resource). The object will be retrieved with [Translations.of].
  @override
  Future<Translations> load(Locale locale) => Translations.load(locale);


  /// Returns true if the resources for this delegate should be loaded
  /// again by calling the [load] method.
  ///
  /// This method is called whenever its [Translations] widget is
  /// rebuilt. If it returns true then dependent widgets will be rebuilt
  /// after [load] has completed.
  @override
  bool shouldReload(LocalizationsPlusDelegate old) => true;
}