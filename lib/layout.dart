import 'package:flutter/material.dart';
import 'package:web_test/helpers/responsiveness.dart';
import 'package:web_test/widgets/large_screen.dart';
import 'package:web_test/widgets/small_screen.dart';
import 'package:web_test/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
