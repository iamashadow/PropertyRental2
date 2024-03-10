import 'package:flutter/material.dart';
import '../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/home_desktop.dart';
import 'UI/Mobile/home_mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ResponsiveLayout(
          desktop: HomeDesktop(),
          mobile: HomeMobile(),
        ),
      ),
    );
  }
}
