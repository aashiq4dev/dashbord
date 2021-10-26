import 'package:dashbord_ui/helpers/responsive.dart';
import 'package:dashbord_ui/widgets/large_screen.dart';
import 'package:dashbord_ui/widgets/small_screen_layout.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: const ResponsiveWidgets(
        largeScreen: LargeScreenLayout(),
        smallScreen: SmallScreenLayout(),
      ),
    );
  }
}
