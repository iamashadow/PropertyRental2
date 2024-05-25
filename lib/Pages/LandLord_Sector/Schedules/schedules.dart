import 'package:flutter/material.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/Schedules/UI/Desktop/schedule_desktop_view.dart';

import '../../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Mobile/schedule_mobile_view.dart';

class Schedules extends StatelessWidget {
  const Schedules({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: ScheduleDesktopView(),
      mobile: ScheduleMobileView(),
    );;
  }
}
