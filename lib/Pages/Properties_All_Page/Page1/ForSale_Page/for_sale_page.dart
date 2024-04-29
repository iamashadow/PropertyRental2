import 'package:flutter/material.dart';

import '../../../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/for_sale_desktop_page.dart';
import 'UI/Mobile/for_sale_mobile_page.dart';

class ForSalePage extends StatelessWidget {
  const ForSalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: ForSaleDesktopPage(),
      mobile: ForSaleMobilePage(),
    );
  }
}
