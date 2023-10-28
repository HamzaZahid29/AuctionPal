import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:flutter/material.dart';

class ChooseFromBtmSheet extends StatelessWidget {
  void Function()? GalleryTap;
  void Function()? CameraTap;


  ChooseFromBtmSheet(this.GalleryTap, this.CameraTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // Customize the height of the bottom sheet
      // Customize the background color
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: Column(
              children: [
                Text(
                  'Choose from',
                  style: medTextflyer,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: GalleryTap,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                        children: [
                          Text(
                            'Gallery',
                            style: medTextflyer,
                          ),
                          Icon(Icons.photo),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 1,
                  color: Colors.white,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: CameraTap,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                        children: [
                          Text(
                            'Camera',
                            style: medTextflyer,
                          ),
                          Icon(Icons.camera_alt),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ) // Customize the content
        ),
      ),
    );
  }
}
