import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:auctionpal/styles/InputDecorations.dart';
import 'package:auctionpal/styles/colors.dart';
import 'package:flutter/material.dart';

class EmailPassword extends StatefulWidget {
  TextEditingController email;
  TextEditingController password;
  TextEditingController cpassword;

  EmailPassword(this.email, this.password, this.cpassword);

  @override
  State<EmailPassword> createState() => _EmailPasswordState();
}

class _EmailPasswordState extends State<EmailPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email :',
              style: medTextflyer.copyWith(color: secColor),
            ),
            TextField(
                controller: widget.email,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: secColor),
                decoration: EmailPass.copyWith(hintText: "someone@email.com")),
            SizedBox(
              height: 20,
            ),
            Text(
              'Password :',
              style: medTextflyer.copyWith(color: secColor),
            ),
            TextField(
                controller: widget.password,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(color: secColor),
                decoration: EmailPass.copyWith(hintText: "********")),
            SizedBox(
              height: 20,
            ),
            Text(
              'Re-Type Password :',
              style: medTextflyer.copyWith(color: secColor),
            ),
            TextField(
                controller: widget.cpassword,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(color: secColor),
                decoration: EmailPass.copyWith(hintText: "********")),
          ],
        ),
      ),
    );
  }
}
