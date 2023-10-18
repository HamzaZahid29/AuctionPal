import 'package:auctionpal/Screens/OTPScreen.dart';
import 'package:auctionpal/Screens/completion.dart';
import 'package:flutter/material.dart';
import 'package:auctionpal/components/NextBtn.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:auctionpal/components/createorlog.dart';
import 'package:auctionpal/components/steps.dart';
import 'EmailPass.dart';
class MinimalSignUp extends StatelessWidget {
  const MinimalSignUp({super.key});
static String ID = 'MinimalSignUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Let's setup your account",textAlign: TextAlign.center, style: medTextflyer,),
              Padding(
                padding: EdgeInsets.all(7),
                child: CreateOrLog(),),
                
              Container(
                height: 340,
                child: PageView(
                  children: [
                    EmailPassword(),
                    OTPScreen(),
                    Complete(),
                  ],
                ),
              ),
              NextBtn()
            ],
          ),
        ),
      ),
    );
  }
}
