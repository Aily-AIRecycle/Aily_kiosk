import 'package:aily_kiosk/classes/earn_point.dart';
import 'package:aily_kiosk/final_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class EarnScreen extends StatefulWidget {
  const EarnScreen({super.key, required this.trashType});

  final String trashType;

  @override
  State<EarnScreen> createState() => _EarnScreenState();
}

class _EarnScreenState extends State<EarnScreen> {
  String phoneNumber = "";

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
                        color: Color(0xfff8b195))),
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
                  child: Column(
                    children: [
                      TextFormField(
                          controller: TextEditingController(
                            text: phoneNumber.replaceAllMapped(
                                RegExp(r'^(\d{3})(\d{3,4})(\d{4})$'),
                                (m) => "${m[1]}-${m[2]}-${m[3]}"),
                          ),
                          // replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
                          keyboardType: TextInputType.phone,
                          readOnly: true,
                          enabled: false,
                          maxLength: 11,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          style: TextStyle(fontSize: deviceHeight * 0.08),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            counterText: "",
                            border: InputBorder.none,
                            hintText: "010-0000-0000",
                            hintStyle: TextStyle(
                                fontSize: deviceHeight * 0.08,
                                color: const Color(0xffe2e2e2)),
                          )),
                      SizedBox(
                        height: deviceHeight * 0.1,
                      ),
                      Text(
                        "전화번호를 누르고\n\"적립하기\" 버튼을 눌러주세요",
                        style: TextStyle(fontSize: deviceHeight * 0.05),
                      ),
                      SizedBox(
                        height: deviceHeight * 0.1,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: deviceWidth * 0.4,
                  child: Column(
                    children: [
                      SizedBox(height: deviceHeight * 0.08),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: deviceWidth * 0.1,
                            height: deviceHeight * 0.1,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  phoneNumber = "${phoneNumber}1";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfff8b195),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0)),
                              ),
                              child: const Text(
                                "1",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceWidth * 0.1,
                            height: deviceHeight * 0.1,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  phoneNumber = "${phoneNumber}2";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfff8b195),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0)),
                              ),
                              child: const Text(
                                "2",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceWidth * 0.1,
                            height: deviceHeight * 0.1,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  phoneNumber = "${phoneNumber}3";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfff8b195),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0)),
                              ),
                              child: const Text(
                                "3",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: deviceHeight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: deviceWidth * 0.1,
                            height: deviceHeight * 0.1,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  phoneNumber = "${phoneNumber}4";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfff8b195),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0)),
                              ),
                              child: const Text(
                                "4",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceWidth * 0.1,
                            height: deviceHeight * 0.1,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  phoneNumber = "${phoneNumber}5";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfff8b195),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0)),
                              ),
                              child: const Text(
                                "5",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceWidth * 0.1,
                            height: deviceHeight * 0.1,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  phoneNumber = "${phoneNumber}6";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfff8b195),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0)),
                              ),
                              child: const Text(
                                "6",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: deviceHeight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: deviceWidth * 0.1,
                            height: deviceHeight * 0.1,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  phoneNumber = "${phoneNumber}7";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfff8b195),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0)),
                              ),
                              child: const Text(
                                "7",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceWidth * 0.1,
                            height: deviceHeight * 0.1,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  phoneNumber = "${phoneNumber}8";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfff8b195),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0)),
                              ),
                              child: const Text(
                                "8",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceWidth * 0.1,
                            height: deviceHeight * 0.1,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  phoneNumber = "${phoneNumber}9";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfff8b195),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0)),
                              ),
                              child: const Text(
                                "9",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: deviceHeight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: deviceWidth * 0.1,
                            height: deviceHeight * 0.1,
                          ),
                          SizedBox(
                            width: deviceWidth * 0.1,
                            height: deviceHeight * 0.1,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  phoneNumber = "${phoneNumber}0";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfff8b195),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0)),
                              ),
                              child: const Text(
                                "0",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceWidth * 0.1,
                            height: deviceHeight * 0.1,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (phoneNumber.isNotEmpty) {
                                      phoneNumber = phoneNumber.substring(
                                          0, phoneNumber.length - 1);
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xfff8b195),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100.0)),
                                ),
                                child: const Image(
                                    height: 40,
                                    color: Colors.white,
                                    image: Svg(
                                      "assets/images/delete-back-2-line.svg",
                                      scale: 1,
                                    ))),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                  height: deviceHeight * 0.18,
                  width: deviceWidth * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("알림"),
                              content: const Text("정말 건너뛰시겠습니까?\n"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "적립하기",
                                    style: TextStyle(color: Color(0xfff8b195)),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const FinalScreen(
                                            isEarned: false);
                                      },
                                    ));
                                  },
                                  child: const Text(
                                    "건너뛰기",
                                    style: TextStyle(color: Color(0xfff8b195)),
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xfff8b195),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                    ),
                    child: Text(
                      "건너뛰기",
                      style: TextStyle(fontSize: deviceHeight * 0.08),
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.18,
                  width: deviceWidth * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      if (phoneNumber.length == 11) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("알림"),
                                content:
                                    Text("전화번호를 알맞게 입력하셨나요?\n$phoneNumber"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "취소",
                                      style:
                                          TextStyle(color: Color(0xfff8b195)),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      var earnPoint = EarnPoint(
                                          phoneNumber: phoneNumber,
                                          trashType: widget.trashType);
                                      int earnedPoint = earnPoint.earnedPoint();
                                      await earnPoint.sendPoint();
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return FinalScreen(
                                            isEarned: true,
                                            phoneNumber: phoneNumber,
                                            earnedPoint: earnedPoint,
                                          );
                                        },
                                      ));
                                    },
                                    child: const Text(
                                      "확인",
                                      style:
                                          TextStyle(color: Color(0xfff8b195)),
                                    ),
                                  ),
                                ],
                              );
                            });
                      } else {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("알림"),
                                content: const Text("전화번호를 알맞게 입력해주세요."),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "확인",
                                      style:
                                          TextStyle(color: Color(0xfff8b195)),
                                    ),
                                  ),
                                ],
                              );
                            });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xfff8b195),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                    ),
                    child: Text(
                      "적립하기",
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

class NumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex <= 3) {
        if (nonZeroIndex % 3 == 0 && nonZeroIndex != text.length) {
          buffer.write('-'); // Add double spaces.
        }
      } else {
        if (nonZeroIndex % 7 == 0 &&
            nonZeroIndex != text.length &&
            nonZeroIndex > 4) {
          buffer.write('-');
        }
      }
    }

    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}
