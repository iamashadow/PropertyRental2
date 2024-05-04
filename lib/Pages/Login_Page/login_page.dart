import 'package:flutter/material.dart';

import '../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/login_page_desktop_view.dart';
import 'UI/Mobile/login_page_mobile_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: LoginPageDesktopView(),
      mobile: LoginPageMobileView(),
    );
  }
}
