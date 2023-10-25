import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:auctionpal/styles/colors.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          // color: appMainColor,
            gradient: LinearGradient(
              begin: Alignment.topLeft, // Starting point of the gradient
              end: Alignment.bottomRight, // Ending point of the gradient
              colors: [appMainColor, Colors.black],
              stops: [0.4, 1.0],// List of gradient colors
            ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 4),
              blurRadius: 4
            )
          ]
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('hamza@gmail.com', style: smallSharpText.copyWith(color: Colors.grey.shade200, fontWeight: FontWeight.w700),),
                        Text('Posted at: 4am 24 oct 2023',style: smallSharpText.copyWith(color: Colors.grey),),

                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                child: Image.asset(
                  'assets/pic.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Assassins Creed Mirage Poster',
                          style: smallTileText,
                        ),
                        Text(
                          'Current bid: 200 usd',
                          style: smallSharpText,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Center(child: Text("Join")),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
