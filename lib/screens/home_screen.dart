import 'package:emotion/constants/assets_manager.dart';
import 'package:emotion/providers/app_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 46, 63),
        title: const Text("Speech Emotion Recognition"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
        /*  Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetsManager.background),
                    fit: BoxFit.fill)),
          ),*/
          SizedBox(
            height: size.height,
            width: size.width,
            child: Column(children: [
              Expanded(
                  flex: 5,
                  child: Consumer<AppManager>(
                    builder: (context, appManager, _) {
                      if (appManager.isLoading) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.04,
                              vertical: size.height * 0.01),
                          width: size.width,
                          child: const Center(
                              child: CircularProgressIndicator(
                         
                          )),
                        );
                      } else {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.04,
                              vertical: size.height * 0.01),
                          width: size.width,
                          child: Card(
                              elevation: 0,
                              color: Colors.transparent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  CircleAvatar(
                                    radius: size.height * 0.08,
                                    backgroundImage:
                                        AssetImage(appManager.imagePath),
                                    backgroundColor: Colors.transparent,
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  const Divider(),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.1),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Emotion : ",
                                          style: TextStyle(
                                              
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.1,
                                        ),
                                        Expanded(
                                          child: Card(
                                              elevation: 0.2,
                                              color: const Color.fromARGB(
                                                  255, 29, 202, 52),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical:
                                                        size.height * 0.01),
                                                child: Text(
                                                  appManager.emotion,
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white),
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  const Divider(),
                                  SizedBox(
                                    height: size.height * 0.08,
                                  ),
                                  Expanded(
                                      child: Container(
                                          color: Colors.transparent,
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: size.width * 0.02,
                                              vertical: size.height * 0.01),
                                          child: Text(
                                            appManager.text,
                                            style: const TextStyle(
                                                
                                                fontSize: 18),
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 4,
                                          ))),
                                ],
                              )),
                        );
                      }
                    },
                  )),
              const Divider(),
              Expanded(
                flex: 2,
                child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.2,
                        vertical: size.height * 0.02),
                    width: size.width,
                    child: Consumer<AppManager>(
                      builder: (context, state, _) {
                        return Column(
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateColor.resolveWith(
                                            (states) => const Color.fromARGB(
                                                255, 12, 46, 63))),
                                onPressed: Provider.of<AppManager>(context,
                                        listen: false)
                                    .startOrStopRecording,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(state.isRecording
                                        ? Icons.stop_rounded
                                        : Icons.mic),
                                    Text(!state.isRecording
                                        ? "Start recording".toUpperCase()
                                        : "Stop recording".toUpperCase())
                                  ],
                                )),
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateColor.resolveWith(
                                            (states) => Colors.red)),
                                onPressed: () => Provider.of<AppManager>(
                                        context,
                                        listen: false)
                                    .pickFile(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(Icons.file_open),
                                    Text("Upload File".toUpperCase())
                                  ],
                                )),
                          ],
                        );
                      },
                    )),
              ),
            ]),
          ),
        ],
      ),
    ));
  }
}
