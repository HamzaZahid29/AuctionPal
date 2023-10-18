import 'package:flutter/material.dart';

class StepWidget extends StatelessWidget {
  String data;
  IconData iconData;


  StepWidget(this.data, this.iconData);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(

      margin: EdgeInsets.symmetric(horizontal: 10),
      duration: Duration(milliseconds: 400),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          width: 1,
          color: Colors.white
        ),
        // color: Colors.deepOrange
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(data),
            SizedBox(height: 10,),
            Icon(iconData),
          ],
        ),
      ),
    );
  }
}
