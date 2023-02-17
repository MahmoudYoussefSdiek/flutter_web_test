import 'package:flutter/material.dart';
import 'package:web_test/constants/controllers.dart';
import 'package:web_test/routing/router.dart';
import 'package:web_test/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: overViewPageRoute,
      onGenerateRoute: generateRoute,
    );
