import 'package:flutter/material.dart';
import 'package:property_rental_2/Universal_Widgets/responsive_layout_builder.dart';

import 'UI/Desktop/faqus_desktop.dart';
import 'UI/Mobile/faqs_mobile.dart';

class FaqsPage extends StatelessWidget {
  const FaqsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: FaqsDesktop(),
      mobile: FaqsMobile(),
    );
  }
}
