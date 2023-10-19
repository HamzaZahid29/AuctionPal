import 'package:auctionpal/components/NextBtn.dart';
import 'package:flutter/material.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:auctionpal/components/createorlog.dart';
import 'package:auctionpal/components/steps.dart';
import 'EmailPass.dart';

class SignUpPage extends StatelessWidget {
  static String ID = 'SignUpPage';
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children : [
                  Text("Let's setup your account",textAlign: TextAlign.center, style: medTextflyer,),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.all(7),
                    child: CreateOrLog(),),
                  SizedBox(height: 20,),
                  Text('Follow these steps to complete account creation', style: smallSharpText.copyWith(
                      color: Colors.grey
                  ),),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: StepWidget('Create', Icons.add)),
                      Expanded(child: StepWidget('Verify', Icons.verified_outlined)),
                      Expanded(child: StepWidget('Complete', Icons.done)),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Column(
                    children: [
                      Expanded(
                        child: PageView(
                          children: [
                              // EmailPassword(),
                              // EmailPassword(),
                              // EmailPassword(),
                              // EmailPassword(),
                          ],
                        ),
                      ),
                      NextBtn(),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
        ),
    );
  }
}
