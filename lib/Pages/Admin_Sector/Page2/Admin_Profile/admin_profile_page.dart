import 'package:flutter/material.dart';

import '../../../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/admin_profile_desktop_page.dart';
import 'UI/Mobile/admin_profile_mobile_page.dart';

class AdminProfilePage extends StatelessWidget {
  const AdminProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: AdminProfileDesktopPage(),
      mobile: AdminProfileMobilePage(),
    );
  }
}
