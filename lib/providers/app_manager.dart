import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

import '../constants/assets_manager.dart';

class AppManager extends ChangeNotifier {
  String? pathFile;
  final record = Record();
  bool isRecording = false;
  bool isLoading = false;
  String result = "";
  String emotion = "happy";
  String imagePath = AssetsManager.appLogo;
  String url = "";
  String text = "hello,my friend";
  void getPredicatedEmotion(String result) {
    emotion = result;
    if (result.contains("sad")) {
      imagePath = AssetsManager.sadEmotion;
    } else if (result.contains("happy")) {
      imagePath = AssetsManager.happyEmotion;
    } else if (result.contains("fear")) {
      imagePath = AssetsManager.fearEmotion;
    } else if (result.contains("neutral")) {
      imagePath = AssetsManager.neutralEmotion;
    } else if (result.contains("calm")) {
      imagePath = AssetsManager.neutralEmotion;
    } else if (result.contains("angry")) {
      imagePath = AssetsManager.angryEmotion;
    } else if (result.contains("disgust")) {
      imagePath = AssetsManager.disgustEmotion;
    } else if (result.contains("surprise")) {
      imagePath = AssetsManager.surprisedEmotion;
    }
    notifyListeners();
  }

  Future<void> getEmotion() async {
    try {
      isLoading = true;
      notifyListeners();
      const link = "https://emotion.abdoamr4.repl.co/api/audio";
      var request = http.MultipartRequest('POST', Uri.parse(link));
      request.files
          .add(await http.MultipartFile.fromPath('messageFile', pathFile!));
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        result = await response.stream.bytesToString();
        final json = jsonDecode(result);
        isLoading = false;
        text = json["text"];
        getPredicatedEmotion(json["emotion"]);
      } else {
        result = "error";
        isLoading = false;
        notifyListeners();
      }
    } catch (e) {
      isLoading = false;
      notifyListeners();
    }
  }

  void startOrStopRecording() async {
    try {
      if (await record.isRecording()) {
        final path = await record.stop();
        isRecording = false;
        pathFile = path;
        getEmotion();
        notifyListeners();
      } else {
        if (await record.hasPermission()) {
          isRecording = true;
          notifyListeners();
          String path = (await getTemporaryDirectory()).path;
          await record.start(
            path: '$path/file.wav',
            encoder: AudioEncoder.wav,
            bitRate: 128000,
            samplingRate: 44100,
          );
        }
      }
    } catch (e) {
      isRecording = false;
      notifyListeners();
    }
  }

  void pickFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) return;

    pathFile = result.files.first.path;
    getEmotion();
    notifyListeners();
  }
}
