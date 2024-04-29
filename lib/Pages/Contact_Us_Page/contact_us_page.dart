import 'package:flutter/material.dart';
import 'package:property_rental_2/Universal_Widgets/responsive_layout_builder.dart';

import 'UI/Desktop/contact_us_desktop_page.dart';
import 'UI/Mobile/contact_us_mobile_page.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: ContactUsDesktopPage(),
      mobile: ContactUsMobilePage(),
    );
  }
}
