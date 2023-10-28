import 'dart:io';
import 'package:auctionpal/components/ChooseFromBottomSheet.dart';
import 'package:auctionpal/components/NextBtn.dart';
import 'package:auctionpal/components/PictureSelectable.dart';
import 'package:auctionpal/components/SmallBtn.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:auctionpal/styles/InputDecorations.dart';
import 'package:auctionpal/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePost extends StatefulWidget {
  static String ID = 'CreatePost';

  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  void chooseMultiImage() async {
    final tempselectedImagesList = await ImagePicker().pickMultiImage();
    if (tempselectedImagesList.isNotEmpty) {
      setState(() {
        selectedImagesList.addAll(tempselectedImagesList);
      });
    }
  }
  void chooseSingleImage(ImageSource imageSource) async {
    final tempselectedImage = await ImagePicker().pickImage(source: imageSource);
    if (selectedImagesList.isNotEmpty) {
      setState(() {
        selectedImagesList.add(tempselectedImage!);
      });
    }
  }
  void clearList(){
    setState(() {
      selectedImagesList.clear();
    });
  }

  late XFile selecteImage = XFile('');
  late List<XFile> selectedImagesList = [];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
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
                          chooseMultiImage();
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 250,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0, // Spacing between columns
                        mainAxisSpacing: 10.0, // Spacing between rows
                      ),
                      itemCount: selectedImagesList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 100,
                          width: 100,
                          child: Image.file(File(selectedImagesList[index].path), fit: BoxFit.cover,),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      GestureDetector(child: SmallBtn(Icons.add, 'Add more'),
                      onTap: (){
                        showModalBottomSheet(
                            context: context,
                            backgroundColor: appMainColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20))),
                            builder: (context) {
                              return ChooseFromBtmSheet(() {
                                chooseSingleImage(ImageSource.gallery);
                              }, () {
                                chooseSingleImage(ImageSource.camera);
                              });
                            });
                      },
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(child: SmallBtn(Icons.close, 'Clear'),
                      onTap: (){
                        clearList();
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
                  PictureSelectable(selectedImagesList ,selected),
                  NextBtn('Specify Details')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
