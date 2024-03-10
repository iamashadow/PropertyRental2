import 'package:flutter/material.dart';

class HeadBannerMobile extends StatelessWidget {
  const HeadBannerMobile({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height*0.3,
      width: size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/HeadBanner/headBanner1.png")
          )
      ),
    );
  }
}
