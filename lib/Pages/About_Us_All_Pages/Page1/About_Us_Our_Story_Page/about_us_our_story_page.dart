import 'package:flutter/material.dart';
import 'package:property_rental_2/Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/about_us_our_story_desktop_page.dart';
import 'UI/Mobile/about_us_our_story_mobile_page.dart';

class AboutUsOurStoryPage extends StatelessWidget {
  const AboutUsOurStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        desktop: AboutUsOurStoryDesktopPage(),
        mobile: AboutUsOurStoryMobilePage(),
      ),
    );
  }
}
