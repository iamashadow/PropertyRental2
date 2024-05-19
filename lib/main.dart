import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Pages/Home_Page/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const PropertyRental());
}

class PropertyRental extends StatelessWidget {
  const PropertyRental({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: Size(360, 690),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown,
          },
        ),
        home: const HomePage(),
        // getPages: RoutingPage.pages,
      ),
    );
  }
}
