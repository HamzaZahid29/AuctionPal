import 'package:auctionpal/Screens/logsignpage.dart';
import 'package:flutter/material.dart';
import 'package:auctionpal/Screens/Splash.dart';
import 'package:auctionpal/Screens/logsignpage.dart';
import 'package:auctionpal/Screens/signupscreen.dart';

import 'package:auctionpal/theme/lighttheme.dart';
import 'package:auctionpal/theme/darktheme.dart';
import 'package:auctionpal/Screens/MinimalSigbUp.dart';

void main() {
  runApp(MaterialApp(
    theme: lightTheme,
    darkTheme: darktheme,

    initialRoute:splashScreen.ID  ,
      routes: {
        splashScreen.ID : (context){
          return splashScreen();
        },
        signup.ID : (context){
          return signup();
        },
        SignUpPage.ID : (context){
          return SignUpPage();
        },
        MinimalSignUp.ID : (context){
          return MinimalSignUp();
        }
      },
  ));
}
