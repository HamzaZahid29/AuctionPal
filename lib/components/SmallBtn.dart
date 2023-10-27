import 'package:flutter/material.dart';

class SmallBtn extends StatelessWidget {
  IconData iconData;
  String text;

  SmallBtn(this.iconData, this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(4)),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Icon(iconData),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
