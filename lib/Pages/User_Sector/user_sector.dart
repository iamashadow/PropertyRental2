import 'package:flutter/material.dart';

import '../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/user_sector_desktop_view.dart';
import 'UI/Mobile/user_sector_mobile_view.dart';

class UerSector extends StatelessWidget {
  const UerSector({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: UserSectorDesktoView(),
      mobile: UserSectorMobileView(),
    );
  }
}
