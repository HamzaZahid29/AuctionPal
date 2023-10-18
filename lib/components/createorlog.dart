import 'package:auctionpal/styles/colors.dart';
import 'package:flutter/material.dart';


class CreateOrLog extends StatelessWidget {
  const CreateOrLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: secColor
        )
      ),
      child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            'alreadey have an account ?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          )),
    );
  }
}
