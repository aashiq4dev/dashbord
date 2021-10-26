import 'package:dashbord_ui/helpers/responsive.dart';
import 'package:dashbord_ui/widgets/large_screen.dart';
import 'package:dashbord_ui/widgets/small_screen_layout.dart';
import 'package:dashbord_ui/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppNavigationBar(context, scaffoldKey),
      body: const ResponsiveWidgets(
        largeScreen: LargeScreenLayout(),
        smallScreen: SmallScreenLayout(),
      ),
    );
  }
}
