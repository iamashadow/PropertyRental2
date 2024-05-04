import 'package:flutter/material.dart';

import '../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/sign_up_page_desktop_View.dart';
import 'UI/Mobile/sign_up_page_mobile_view.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: SignUpPageDesktopView(),
      mobile: SignUpPageMobileView(),
    );
  }
}
