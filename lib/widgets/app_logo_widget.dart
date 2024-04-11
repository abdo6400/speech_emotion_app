
import 'package:flutter/material.dart';

import '../constants/assets_manager.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          image:
              const DecorationImage(image: AssetImage(AssetsManager.appLogo))),
    );
  }
}
