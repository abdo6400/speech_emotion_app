import 'package:emotion/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/app_manager.dart';

class EmotionRecognitionApp extends StatelessWidget {
  const EmotionRecognitionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppManager(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Emotion Recognition",
        home: SplashScreen(),
      ),
    );
  }
}
