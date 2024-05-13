import 'package:flutter/material.dart';

import '../../../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/land_lord_property_add_Desktop.dart';
import 'UI/Mobile/land_lord_property_add_mobile.dart';

class LandLordPropertyAdd extends StatelessWidget {
  const LandLordPropertyAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: LandLordPropertyAddDesktop(),
      mobile: LandLordPropertyAddMobile(),
    );
  }
}
