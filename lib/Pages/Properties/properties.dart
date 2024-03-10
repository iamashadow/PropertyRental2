import 'package:flutter/material.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';


class PropertiesPage extends StatelessWidget {
  const PropertiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          title: "Properties Page",
        ),
      ),
    );
  }
}
