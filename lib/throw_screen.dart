import 'package:aily_kiosk/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:process_run/shell.dart';

class ThrowScreen extends StatelessWidget {
  const ThrowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    var shell = Shell();

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: deviceWidth * 0.02,
                ),
                const Text("시작",
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
                const Text("버리기",
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
                const Text("적립",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff121212))),
                SizedBox(
                  width: deviceWidth * 0.02,
                ),
              ],
            ),
            SizedBox(
              height: deviceHeight * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: deviceWidth * 0.4,
                  child: Image.asset("assets/images/temp.png"),
                ),
                SizedBox(
                  width: deviceWidth * 0.4,
                  child: Text(
                    "쓰레기를 투입구에 넣고\n\"버리기\" 버튼을 눌러주세요",
                    style: TextStyle(fontSize: deviceHeight * 0.05),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: deviceHeight * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: deviceHeight * 0.25,
                  width: deviceWidth * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xfff8b195),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                    ),
                    child: Text(
                      "이전",
                      style: TextStyle(fontSize: deviceHeight * 0.08),
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.25,
                  width: deviceWidth * 0.4,
                  child: ElevatedButton(
                    onPressed: () async {
                      await shell.run('''
                        python "C:\\Aily\\Aily_ai\\exit_pause.py"
                        ''');
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const LoadingScreen();
                        },
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xfff8b195),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                    ),
                    child: Text(
                      "버리기",
                      style: TextStyle(fontSize: deviceHeight * 0.08),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: deviceHeight * 0.05,
            )
          ],
        ),
      ),
    );
  }
}
