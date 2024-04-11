import 'dart:async';

import 'package:animated_widgets/widgets/opacity_animated.dart';
import 'package:animated_widgets/widgets/translation_animated.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../widgets/app_logo_widget.dart';
import '../widgets/loaders/loader2.dart';
import 'on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  _goNext() async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LandingOnePage()));
  }

  _startDelay() {
    _timer = Timer(const Duration(milliseconds: 3500), () => _goNext());
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(bottom: size.height * 0.01),
                  child: LoaderTwo(
                    centralDotColor: Colors.white,
                    dotOneColor: AppColors.secondary2,
                    dotTwoColor: AppColors.secondary,
                    dotThreeColor: AppColors.primary,
                    dotFourColor: Colors.black,
                    dotFiveColor: AppColors.secondary2,
                    dotSixColor: AppColors.secondary,
                    dotSevenColor: AppColors.primary,
                    dotEightColor: Colors.black,
                  )),
            ),
            Align(
                alignment: Alignment.center,
                child: TranslationAnimatedWidget.tween(
                  enabled: true,
                  translationDisabled: const Offset(0, 200),
                  translationEnabled: const Offset(0, 0),
                  delay: const Duration(microseconds: 1500),
                  child: OpacityAnimatedWidget.tween(
                      enabled: true,
                      opacityDisabled: 0,
                      opacityEnabled: 1,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Material(
                            elevation: 1,
                            type: MaterialType.circle,
                            color: Colors.white,
                            child: CircleAvatar(
                              radius: size.height * 0.06,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: size.height * 0.06,
                                backgroundColor: Colors.white,
                                child: const AppLogoWidget(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                "Emotion",
                                style: TextStyle(
                                    letterSpacing: 0.3,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                              Text(
                                "Recognition",
                                style: TextStyle(
                                    letterSpacing: 0.3,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.secondary2),
                              )
                            ],
                          )
                        ],
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
