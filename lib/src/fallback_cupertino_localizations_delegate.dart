// Copyright (c) 2025, the Dart project authors. Use of this source code
// is governed by a MIT license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';

/// A delegate class of localized resources of type [CupertinoLocalizations] implement abstract class
/// [LocalizationsDelegate], which can be loaded by a [CupertinoLocalizations] widget.
class FallbackCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationsDelegate();

  /// Whether resources for the given locale can be loaded by this delegate.
  ///
  /// Return true if the instance of `Translations` loaded by this delegate's [load]
  /// method supports the given `locale`'s language.
  @override
  bool isSupported(Locale locale) => true;

  /// Start loading the resources for `locale`. The returned future completes
  /// when the resources have finished loading.
  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      DefaultCupertinoLocalizations.load(locale);

  /// Returns true if the resources for this delegate should be loaded
  /// again by calling the [load] method.
  @override
  bool shouldReload(FallbackCupertinoLocalizationsDelegate old) => false;
}
