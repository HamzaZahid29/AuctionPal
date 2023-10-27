import 'package:flutter/material.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:lottie/lottie.dart';
import 'logsignbtn.dart';

class loginflyer extends StatelessWidget {
  const loginflyer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: EdgeInsets.all(30),
              child: Lottie.asset('assets/log.json', height: 270)),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "Continue Your Journey",
              style: BigTextflyer,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
