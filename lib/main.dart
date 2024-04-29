import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:property_rental_2/Utils/Routing_Page/routing_page.dart';
import 'Pages/Home_Page/home_page.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(propertyRental());
}


class propertyRental extends StatelessWidget {
  const propertyRental({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: Size(360, 690),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown,
          },
        ),
        home: HomePage(),
        // getPages: RoutingPage.pages,
      ),
    );
  }
}
