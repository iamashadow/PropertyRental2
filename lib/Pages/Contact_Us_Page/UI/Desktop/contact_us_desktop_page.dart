import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../Components/Desktop_Components/Contact_Form_Desktop/contact_form_desktop.dart';

class ContactUsDesktopPage extends StatelessWidget {
  const ContactUsDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //HeadBanner
            Container(
              height: 1.sh*0.8,
              width: 1.sw,
              child: HeadBannerSection(),
            ),
            SizedBox(height: 1.sh*0.1,),

            //ContactForm
            Container(
              padding: EdgeInsets.all(20.h),
              width: 1.sw*0.70,
              // height: 1.sh*0.70,
              // color: Colors.amber,
              child: ContactFormDesktop(),
            ),

            //WebFooter Area
            Container(
              width: 1.sw,
              height: 1.sh*0.6,
              color: const Color(0xFF303030),
              child: FooterAreaDesktop(),
            ),
          ],
        ),
      ),
    );
  }
}
