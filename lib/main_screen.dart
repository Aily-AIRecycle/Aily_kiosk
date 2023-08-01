import 'package:aily_kiosk/throw_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
                  image: const Svg(
                    "assets/images/AiLY.svg",
                  ))
            ],
          ),
          centerTitle: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: deviceWidth * 0.4,
              child: Image.asset("assets/images/temp.png"),
            ),
            SizedBox(
              height: deviceHeight * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: deviceHeight * 0.25,
                    width: deviceWidth * 0.5,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const ThrowScreen();
                            },
                          ));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xfff8b195),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0)),
                        ),
                        child: Text(
                          "시작하기",
                          style: TextStyle(fontSize: deviceHeight * 0.08),
                        ))),
              ],
            ),
            SizedBox(
              height: deviceHeight * 0.08,
            )
          ],
        ),
      ),
    );
  }
}
