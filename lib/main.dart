import 'package:auctionpal/Models/UserProvider.dart';
import 'package:auctionpal/Screens/logsignpage.dart';
import 'package:flutter/material.dart';
import 'package:auctionpal/Screens/Splash.dart';
import 'package:auctionpal/Screens/logsignpage.dart';
import 'package:auctionpal/Screens/signupscreen.dart';

import 'package:auctionpal/theme/lighttheme.dart';
import 'package:auctionpal/theme/darktheme.dart';
import 'package:auctionpal/Screens/MinimalSigbUp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:auctionpal/Screens/MainPages/MainPage.dart';
import 'package:auctionpal/Screens/CreatingPost/CreatePost.dart';
// hi mera nam hamza hai
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
    create: (context) {
      return UserProvider();
    },
    child: MaterialApp(
      theme: lightTheme,
      darkTheme: darktheme,
      initialRoute: HomeScreen.ID,
      routes: {
        splashScreen.ID: (context) {
          return splashScreen();
        },
        signup.ID: (context) {
          return signup();
        },
        SignUpPage.ID: (context) {
          return SignUpPage();
        },
        MinimalSignUp.ID: (context) {
          return MinimalSignUp();
        },
        HomeScreen.ID: (context) {
          return HomeScreen();
        },
        CreatePost.ID: (context) {
          return CreatePost();
        }
      },
    ),
  ));
}
