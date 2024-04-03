import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertyDetailsImageDesktop extends StatelessWidget {
  const PropertyDetailsImageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 1.sh*0.40,
              width: 1.sw*0.36,
              color: Colors.limeAccent,
            ),
            Column(
              children: [
                Container(
                  height: 1.sh*0.20,
                  width: 1.sw*0.24,
                  color: Colors.blue,
                ),
                Container(
                  height: 1.sh*0.20,
                  width: 1.sw*0.24,
                  color: Colors.deepPurple,
                ),
              ],
            )
          ],
        ),
        Row(
        children: [
          Container(
            height: 1.sh*0.20,
            width: 1.sw*0.18,
            color: Colors.red,
          ),
          Container(
            height: 1.sh*0.20,
            width: 1.sw*0.18,
            color: Colors.purple,
          ),
          Container(
            height: 1.sh*0.20,
            width: 1.sw*0.24,
            color: Colors.green,
          ),
        ],)
      ],
    );
  }
}
