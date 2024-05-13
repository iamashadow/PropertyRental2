import 'package:flutter/material.dart';
import '../../../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/land_lord_profile_information_desktop.dart';
import 'UI/Mobile/land_lord_profile_information_mobile.dart';

class LandLordProfileInformationPage extends StatelessWidget {
  const LandLordProfileInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: LandLordProfileInformationDesktop(),
      mobile: LandLordProfileInformationMobile(),
    );
  }
}
