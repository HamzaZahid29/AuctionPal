import 'package:auctionpal/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:auctionpal/styles/InputDecorations.dart';
import 'package:flutter/services.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Expanded(
              child: Text(
            'Enter the OTP that we sent to your Email',
            textAlign: TextAlign.center,
            style: smallTextflyer.copyWith(color: secColor),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: TextStyle(fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: EmailPass,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: TextStyle(fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: EmailPass,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: TextStyle(fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: EmailPass,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: TextStyle(fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: EmailPass,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
