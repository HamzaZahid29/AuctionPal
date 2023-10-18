import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';
class Complete extends StatelessWidget {
  const Complete({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Lottie.asset('assets/congratulations.json', height: 200),
            Text('Congratulation !',style: BigTextflyer,),
            Text('Your account has been succesfully created'),
          ],
        ),
      ),
    );
  }
}
