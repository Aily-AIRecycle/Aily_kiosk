import 'dart:async';
import 'dart:io';
import 'package:aily_kiosk/earn_screen.dart';
import 'package:path/path.dart' as path;

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

Future<String> readFile() async {
  var directory = Directory('C:\\Aily\\Aily_ai\\User_Data\\');
  var files = directory.listSync();

  if (files.isNotEmpty) {
    files.sort((a, b) {
      var aName = path.basename(a.path);
      var bName = path.basename(b.path);
      return bName.compareTo(aName);
    });
    var lastFile = files.first;
    if (lastFile is File) {
      var filePath = lastFile.path;
      var fileContent = File(filePath).readAsStringSync();
      print(filePath);
      if (fileContent == "0.0") {
        return "can";
      } else if (fileContent == "1.0" || fileContent == "2.0") {
        return "pet";
      } else if (fileContent == "3.0") {
        return "gen";
      } else {
        return '';
      }
    } else {
      return '';
    }
  } else {
    return '';
  }
}

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<int> defineSeconds(String trashType) async {
    int seconds;
    if (trashType == "gen") {
      seconds = 0;
    } else if (trashType == "pet") {
      seconds = 10;
    } else if (trashType == "can") {
      seconds = 10;
    } else {
      seconds = 0;
    }
    return seconds;
  }

  @override
  void initState() {
    String trashType = readFile().toString();
    Timer(const Duration(seconds: 10), () {
      defineSeconds(trashType).then(
        (seconds) => Timer(
          Duration(seconds: seconds),
          () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return EarnScreen(trashType: trashType);
              },
            ));
          },
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                  iconSize: deviceHeight * 0.05,
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  icon: const Image(
                      image: Svg("assets/images/home-line.svg", scale: 1))),
              SizedBox(width: deviceWidth * 0.025),
            ],
            toolbarHeight: deviceHeight * 0.13,
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              children: [
                SizedBox(
                  width: deviceWidth * 0.03,
                ),
                Image(
                    height: deviceHeight * 0.12,
                    image: const Svg("assets/images/AiLY.svg"))
              ],
            ),
            centerTitle: false,
          ),
          body: Column(children: [
            SizedBox(height: deviceHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: deviceWidth * 0.05,
                ),
                const Text("시작",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff121212))),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: const Color(0xffe2e2e2),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: const Color(0xffe2e2e2),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: const Color(0xffe2e2e2),
                  ),
                ),
                const Text("버리기",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xfff8b195))),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: const Color(0xffe2e2e2),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: const Color(0xffe2e2e2),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: const Color(0xffe2e2e2),
                  ),
                ),
                const Text("적립",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff121212))),
                SizedBox(
                  width: deviceWidth * 0.05,
                ),
              ],
            ),
            SizedBox(
              height: deviceHeight * 0.2,
            ),
            SizedBox(
              height: deviceHeight * 0.3,
              width: deviceHeight * 0.3,
              child: const CircularProgressIndicator(
                strokeWidth: 10,
                color: Color(0xfff8b195),
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.1,
            ),
            const Text("버리는중...",
                style: TextStyle(fontSize: 20, color: Color(0xff121212)))
          ])),
    );
  }
}
