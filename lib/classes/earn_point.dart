import 'dart:convert';
import 'package:http/http.dart' as http;

class EarnPoint {
  String phoneNumber;
  String trashType;

  EarnPoint({required this.phoneNumber, required this.trashType});

  int point = 0;
  int gen = 0;
  int pet = 0;
  int can = 0;

  void checkTrashType() {
    if (trashType == "gen") {
      gen = 1;
      point = 0;
    } else if (trashType == "pet") {
      pet = 1;
      point = 100;
    } else if (trashType == "can") {
      can = 1;
      point = 100;
    }
  }

  Future sendPoint() async {
    checkTrashType();
    var url = Uri.parse('https://ailymit.store/member/member/point');

    await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        "phonenumber": phoneNumber,
        "point": point,
        "gen": gen,
        "pet": pet,
        "can": can,
      }),
    );
  }

  int earnedPoint() {
    checkTrashType();
    return point;
  }
}
