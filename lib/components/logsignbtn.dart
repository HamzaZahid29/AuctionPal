import 'package:flutter/material.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';

class logsignbtn extends StatelessWidget {
  bool sign;
  String btnText;

  logsignbtn(this.sign, this.btnText);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: sign ? Color(0xff0b463d) : Colors.deepOrange,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(btnText, style: medTextflyer),
      ),
    );
  }
}
