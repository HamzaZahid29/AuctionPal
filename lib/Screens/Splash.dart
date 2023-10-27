import 'package:auctionpal/Screens/logsignpage.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';

class splashScreen extends StatelessWidget {
  static String ID = 'splashScreen';

  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        backgroundColor: Theme.of(context).colorScheme.background,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        animationDuration: Duration(microseconds: 2800),
        splashIconSize: 200,
        splash: Lottie.asset('assets/splashlottie.json', repeat: true),
        nextScreen: signup());
  }
}
