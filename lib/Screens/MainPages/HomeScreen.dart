import 'package:auctionpal/components/ItemWidget.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:flutter/material.dart';

class HomeScreenPage extends StatelessWidget {
  static String ScreenID = 'HomeScreenPage';

  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'On Going Auctions',
          style: medTextflyer,
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: ListView(
          children: [
            ItemWidget(),
            ItemWidget(),
            ItemWidget(),
            ItemWidget(),
            ItemWidget(),
            ItemWidget(),
            ItemWidget(),
            ItemWidget(),
            ItemWidget(),
            ItemWidget(),
            ItemWidget(),
            ItemWidget(),
          ],
        ))
      ],
    );
  }
}
