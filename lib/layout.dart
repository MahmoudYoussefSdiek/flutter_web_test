import 'package:flutter/material.dart';
import 'package:web_test/helpers/responsiveness.dart';
import 'package:web_test/widgets/large_screen.dart';
import 'package:web_test/widgets/side_menu.dart';
import 'package:web_test/widgets/small_screen.dart';
import 'package:web_test/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
