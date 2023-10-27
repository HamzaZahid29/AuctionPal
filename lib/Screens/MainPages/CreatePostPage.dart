import 'package:auctionpal/Screens/CreatingPost/CreatePost.dart';
import 'package:auctionpal/components/ConfirmButton.dart';
import 'package:auctionpal/components/ItemWidget.dart';
import 'package:auctionpal/components/NextBtn.dart';
import 'package:auctionpal/components/logsignbtn.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CreatePostPage extends StatelessWidget {
  const CreatePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
            child: Text(
          "Let's create a Post",
          style: medTextflyer,
        )),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Lottie.asset('assets/createpost.json', height: 150),
        ),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, CreatePost.ID);
            },
            child: NextBtn('Create Post'))
      ],
    );
  }
}
