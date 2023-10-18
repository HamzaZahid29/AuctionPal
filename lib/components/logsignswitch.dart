import 'package:flutter/material.dart';
import 'package:auctionpal/styles/colors.dart' as appColor;
import 'package:auctionpal/styles/AppFontStyles.dart';

class logsignswitch extends StatefulWidget {
  bool toggleswitch;
  Function buttonTap;


  logsignswitch(this.toggleswitch, this.buttonTap);

  @override
  State<logsignswitch> createState() => _logsignswitchState();
}

class _logsignswitchState extends State<logsignswitch> {



  void toggle(){
    widget.buttonTap();
    if(widget.toggleswitch == false){
      setState(() {

        widget.toggleswitch = true;
      });
    }else{
      setState(() {

        widget.toggleswitch = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){
            toggle();
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft:Radius.circular(10)),
              border: Border.all(
                color: appColor.secColor,
                width: 1
              ),
              color:widget.toggleswitch ?  appColor.appMainColor : appColor.secColor,
            ),
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text('login', style: smallTextflyer.copyWith(
                color:widget.toggleswitch?appColor.secColor : appColor.appMainColor
              ),),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            toggle();
            widget.toggleswitch;
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight:Radius.circular(10)),
              border: Border.all(
                  color: appColor.secColor,
                  width: 1
              ),
              color:widget.toggleswitch ?appColor.secColor : appColor.appMainColor,
            ),
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text('SignUp', style: smallTextflyer.copyWith(
                  color:widget.toggleswitch?appColor.appMainColor :appColor.secColor,
              ),),
            ),
          ),
        ),
      ],
    );
  }
}
