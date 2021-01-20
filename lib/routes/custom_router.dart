import 'package:flutter/material.dart';

import 'package:change_country/routes/route_names.dart';
import 'package:change_country/pages/home_page.dart';
import 'package:change_country/pages/about_page.dart';
import 'package:change_country/pages/settings_page.dart';
import 'package:change_country/pages/not_found_page.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case aboutRoute:
        return MaterialPageRoute(builder: (_) => AboutPage());
      case settingsRoute:
        return MaterialPageRoute(builder: (_) => SettingsPage());
    }

    return MaterialPageRoute(builder: (_) => NotFoundPage());
  }
}
