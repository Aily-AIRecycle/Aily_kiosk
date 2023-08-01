import 'dart:async';

import 'package:aily_kiosk/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen(
      {super.key, required this.isEarned, this.earnedPoint, this.phoneNumber});

  final bool isEarned;
  final String? phoneNumber;
  final int? earnedPoint;

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  int second = 10;
  @override
  void initState() {
    Timer(const Duration(seconds: 10), () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const MainScreen();
        },
      ));
    });
    for (int i = 0; i < 10; i++) {
      Timer(Duration(seconds: i), () {
        setState(() {
          second = 10 - i;
        });
      });
    }
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
        body: widget.isEarned
            ? Center(
                child: Column(
                  children: [
                    SizedBox(height: deviceHeight * 0.3),
                    Text(
                        "${widget.phoneNumber!}\n${widget.earnedPoint!}포인트가 적립되었습니다.\n$second초 후에 메인화면으로 이동합니다.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: deviceHeight * 0.04,
                        )),
                  ],
                ),
              )
            : Center(
                child: Column(
                  children: [
                    SizedBox(height: deviceHeight * 0.3),
                    Text("감사합니다. 안녕히 가십시오.\n$second초 후에 메인화면으로 이동합니다.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: deviceHeight * 0.04,
                        )),
                  ],
                ),
              ),
      ),
    );
  }
}
