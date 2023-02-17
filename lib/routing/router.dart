import 'package:flutter/material.dart';
import 'package:web_test/pages/clients/clients.dart';
import 'package:web_test/pages/drivers/drivers.dart';
import 'package:web_test/pages/overview/overview.dart';
import 'package:web_test/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(const OverViewPage());

    case driversPageRoute:
      return _getPageRoute(const DriversPage());

    case clientsPageRoute:
      return _getPageRoute(const ClientsPage());

    default:
      return _getPageRoute(const OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
