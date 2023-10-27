import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:auctionpal/styles/colors.dart';
import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  Color bgColor;
  String btnText;

  ConfirmButton(this.bgColor, this.btnText);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          btnText,
          style: medTextflyer.copyWith(color: appMainColor),
        ),
      ),
    );
  }
}
