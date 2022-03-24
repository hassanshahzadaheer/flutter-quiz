import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int points;

  Result(this.points);

  String get getReward {
    String rewardMessage = "";
    if (points >= 8 && points <= 16) {
      rewardMessage = "You have to work hard";
    } else if (points >= 17 && points <= 24) {
      rewardMessage = "Good! but Improve your self";
    } else if (points >= 25 && points <= 30) {
      rewardMessage = "Excellent";
    } else {
      rewardMessage = "Fail...";
    }
    return rewardMessage;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        getReward,
        textScaleFactor: 3.0,
      ),
    );
  }
}
