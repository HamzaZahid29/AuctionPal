import 'package:auctionpal/Screens/MainPages/CreatePostPage.dart';
import 'package:auctionpal/Screens/MainPages/HomeScreen.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:auctionpal/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String ID = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int screen = 0;
  List<Widget> ScreenList = [
    HomeScreenPage(),
    CreatePostPage(),
    Container(
      color: Colors.pink,
      height: 299,
    ),
    Container(
      color: Colors.brown,
      height: 299,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 29, left: 10, right: 10),
          child: ScreenList[screen],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
            gap: 20,
            activeColor: Colors.white,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            tabBackgroundColor: Colors.white,
            color: Colors.white,
            onTabChange: (value) {
              setState(() {
                screen = value;
              });
            },
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                backgroundGradient: LinearGradient(
                  colors: [Colors.blue.shade300, appMainColor],
                  // Define your gradient colors
                  begin: Alignment.topLeft,
                  // Adjust the start point
                  end: Alignment.bottomRight,
                  stops: [0.4, 1.0],
                  // Adjust the end point,
                ),
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Likes',
                backgroundGradient: LinearGradient(
                    colors: [Colors.pink.shade300, appMainColor],
                    // Define your gradient colors
                    begin: Alignment.topLeft,
                    // Adjust the start point
                    end: Alignment.bottomRight,
                    stops: [0.4, 1.0] // Adjust the end point
                    ),
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
                backgroundGradient: LinearGradient(
                    colors: [Colors.brown.shade300, appMainColor],
                    // Define your gradient colors
                    begin: Alignment.topLeft,
                    // Adjust the start point
                    end: Alignment.bottomRight,
                    stops: [0.4, 1.0] // Adjust the end point
                    ),
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                backgroundGradient: LinearGradient(
                    colors: [Colors.deepOrange.shade300, appMainColor],
                    // Define your gradient colors
                    begin: Alignment.topLeft,
                    // Adjust the start point
                    end: Alignment.bottomRight,
                    stops: [0.4, 1.0] // Adjust the end point
                    ),
              )
            ]),
      ),
    );
  }
}
