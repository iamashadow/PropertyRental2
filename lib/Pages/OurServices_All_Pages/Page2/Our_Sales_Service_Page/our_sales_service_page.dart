import 'package:flutter/material.dart';

import '../../../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/our_sales_service_desktop_page.dart';
import 'UI/Mobile/our_sales_service_mobile_page.dart';

class OurSalesServicePage extends StatelessWidget {
  const OurSalesServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: OurSaleServiceDesktopPage(),
      mobile: OurSalesServiceMobilePage(),
    );
  }
}
