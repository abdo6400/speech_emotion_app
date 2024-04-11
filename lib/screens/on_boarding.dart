import 'package:emotion/constants/assets_manager.dart';
import 'package:emotion/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LandingOnePage extends StatelessWidget {
  const LandingOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black38,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 2.0)
                        ]),
                    margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                        vertical: size.height * 0.02),
                    child: Column(
                      children: <Widget>[
                        Image.asset(AssetsManager.startimage,fit: BoxFit.fill,width: size.width,height: size.height*0.36,)
                       ,
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.02,
                              vertical: size.height * 0.01),
                          child: Column(
                            children: [
                              SizedBox(height: size.height * 0.05),
                              Text(
                                "Welcome to SER system",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 21,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              Text(
                                "a SER system is to automatically detect and classify the emotional state of a speaker from an audio signal using machine learning and signal processing techniques. SER systems are widely used in various applications such as call centers, human-robot interaction, mental health monitoring, and entertainment.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: size.height * 0.0025,
                                    color: Colors.grey.shade500,
                                    fontSize: 14.0),
                              ),
                              SizedBox(height: size.height * 0.01),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromARGB(255, 12, 46, 63))),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                    },
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}
