import 'package:flutter/material.dart';

import 'package:change_country/localization/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

String translate(BuildContext context, String key) {
  return AppLocalizations.of(context).getTranslatedValue(key);
}

const String ENGLISH = 'en';
const String ROMANIAN = 'ro';

const String LANGUAGE_CODE = 'languageCode';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();

  await _prefs.setString(LANGUAGE_CODE, languageCode);

  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  Locale _temp;
  switch (languageCode) {
    case ENGLISH:
      _temp = Locale(languageCode, 'US');
      break;
    case ROMANIAN:
      _temp = Locale(languageCode, 'RO');
      break;
    default:
      _temp = Locale(ENGLISH, 'US');
      break;
  }
  return _temp;
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();

  String languageCode = _prefs.getString(LANGUAGE_CODE) ?? ENGLISH;
  return _locale(languageCode);
}
