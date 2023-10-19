import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  String ErrorData;


  CustomErrorWidget(this.ErrorData);

  @override
  Widget build(BuildContext context) {
   return ErrorData.isEmpty ? Container(
     decoration: BoxDecoration(
       border: Border.all(
         color: Colors.red,
         width: 1
       )
     ),
     child: Padding(
       padding: EdgeInsets.all(10),
       child: Text(ErrorData, style: TextStyle(color: Colors.red),),
     ),
   ) : Container(child: Text('no error'),);
  }
}
