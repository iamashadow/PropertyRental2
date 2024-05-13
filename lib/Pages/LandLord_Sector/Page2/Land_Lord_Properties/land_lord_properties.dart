import 'package:flutter/material.dart';

import '../../../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/land_lord_properties_desktop.dart';
import 'UI/Mobile/land_lord_properties_mobile.dart';

class LandLordProperties extends StatelessWidget {
  const LandLordProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: LandLordPropertiesDesktop(),
      mobile: LandLordPropertiesMobile(),
    );
  }
}
