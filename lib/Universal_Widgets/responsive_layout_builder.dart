import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {

  final Widget? mobile;
  final Widget? desktop;

  ResponsiveLayout({super.key,
    this.mobile,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth < 768 || constraints.maxWidth == 768 ){
        return mobile ?? SizedBox();
      }
      else{
        return desktop ?? SizedBox();
      }
    },
    );
  }
}
