import 'package:flutter/material.dart';

import '../../../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/our_partners_desktop_page.dart';
import 'UI/Mobile/our_partners_mobile_page.dart';

class OurPartnersPage extends StatelessWidget {
  const OurPartnersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: OurPartnersDesktopPage(),
      mobile: OurPartnersMobilePage(),
    );
  }
}
