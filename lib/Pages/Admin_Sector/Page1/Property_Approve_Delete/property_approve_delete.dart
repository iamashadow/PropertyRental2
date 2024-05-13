import 'package:flutter/material.dart';

import '../../../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/property_approve_delete_desktop_page.dart';
import 'UI/Mobile/property_approve_delete_mobile_page.dart';

class PropertyApproveDelete extends StatelessWidget {
  const PropertyApproveDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: ProeprtyApproveDeleteDesktopPage(),
      mobile: ProprtyApproveDeleteMobilePage(),
    );
  }
}
