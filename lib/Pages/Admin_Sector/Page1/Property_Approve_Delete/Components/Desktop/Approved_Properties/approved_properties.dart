import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApproveProperties extends StatelessWidget {
  const ApproveProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Center(
            child: Text("Property Approved "),
          )
        ],
      ),
    );
  }
}
