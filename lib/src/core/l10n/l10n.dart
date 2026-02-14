import 'package:flutter/widgets.dart';
import 'package:aveditor/src/core/core.dart';

export 'app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
