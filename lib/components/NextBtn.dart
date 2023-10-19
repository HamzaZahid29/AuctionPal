import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:auctionpal/styles/colors.dart';
import 'package:flutter/material.dart';
class NextBtn extends StatelessWidget {
  String btnText;


  NextBtn(this.btnText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: secColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(btnText, style: medTextflyer.copyWith(color: appMainColor),),
            Icon(Icons.arrow_forward, color: appMainColor,),
          ],
        ),
      ),
    );
  }
}
