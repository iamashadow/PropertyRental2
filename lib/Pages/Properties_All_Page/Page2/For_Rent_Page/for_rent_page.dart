import 'package:flutter/material.dart';
import '../../../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/for_rent_desktop_page.dart';
import 'UI/Mobile/for_rent_mobile_page.dart';

class ForRentPage extends StatelessWidget {
  const ForRentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: ForRentDesktopPage(),
      mobile: ForRentMobilePage(),
    );
  }
}
