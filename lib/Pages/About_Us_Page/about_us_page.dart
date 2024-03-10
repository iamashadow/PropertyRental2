import 'package:flutter/material.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          title: "About Us",
        ),
      ),
    );
  }
}
