import 'package:auctionpal/Screens/EmailPass.dart';
import 'package:auctionpal/components/ChooseFromBottomSheet.dart';
import 'package:auctionpal/components/NextBtn.dart';
import 'package:auctionpal/components/SmallBtn.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:auctionpal/styles/InputDecorations.dart';
import 'package:auctionpal/styles/colors.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  static String ID = 'CreatePost';

  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    List<Color> colorlist = [
      Colors.green,
      Colors.red,
      Colors.blue,
      Colors.yellowAccent
    ];
    int selected = 0;
    return Scaffold(
      backgroundColor: appMainColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appMainColor,
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Create Post',
                style: medTextflyer,
              ),
              background: Image.asset(
                'assets/createpostsliverbg.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter a Post Title: ',
                    style: medTextflyer,
                  ),
                  TextField(
                    decoration: InputNormal.copyWith(
                        hintText: 'Original PlayStation 3'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Description: ',
                    style: medTextflyer,
                  ),
                  TextField(
                    maxLines: 10,
                    decoration: InputNormal.copyWith(
                        hintText:
                            "e.g: It is the the Original Playstation 3 with Controllers and all other stuff....."),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Pick Images: ',
                        style: medTextflyer,
                      ),
                      Text(
                        '(Max 4): ',
                        style: smallSharpText,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: SmallBtn(Icons.upload, 'Choose Images'),
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              backgroundColor: appMainColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20))),
                              builder: (context) {
                                return ChooseFromBtmSheet();
                              });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Choose Thumbnail: ',
                    style: medTextflyer,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(4, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = index;
                              print(selected);
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              color: selected == index
                                  ? Colors.brown
                                  : colorlist[index],
                              height: 80,
                              width: 80,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  NextBtn('Specify Bidding')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
