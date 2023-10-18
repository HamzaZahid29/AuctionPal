import 'package:flutter/material.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:lottie/lottie.dart';
import 'logsignbtn.dart';
class signupFlyer extends StatelessWidget {
  const signupFlyer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: EdgeInsets.all(30),
              child: Lottie.asset('assets/signup.json', height: 270)),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "Let's Create Your Account",
              style: BigTextflyer,
            ),
          ),
        SizedBox(height: 20,),

        ],
      ),
    );
  }
}
