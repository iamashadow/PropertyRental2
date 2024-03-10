import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyIconButton extends StatelessWidget {

  IconData? myIcon;
  VoidCallback? onPressed;
  Color? IconColor;


  MyIconButton({super.key,

    this.myIcon,
    this.onPressed,
    this.IconColor,

  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: FaIcon(myIcon, color: IconColor,)
    );
  }
}
