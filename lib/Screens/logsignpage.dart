import 'package:auctionpal/components/loginflyer.dart';
import 'package:flutter/material.dart';
import 'package:auctionpal/components/logsignswitch.dart';
import 'package:auctionpal/components/signupFlyer.dart';
import 'package:auctionpal/components/logsignbtn.dart';
import 'MinimalSigbUp.dart';

class signup extends StatefulWidget {
  static String ID = 'signup';

  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool isOnSignIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              logsignswitch(isOnSignIn, () {
                if (isOnSignIn == false) {
                  setState(() {
                    isOnSignIn = true;
                  });
                } else {
                  setState(() {
                    isOnSignIn = false;
                  });
                }
              }),
              isOnSignIn ? signupFlyer() : loginflyer(),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MinimalSignUp.ID);
                  },
                  child:
                      logsignbtn(isOnSignIn, isOnSignIn ? 'signIn' : 'login')),
            ],
          ),
        ),
      ),
    );
  }
}
