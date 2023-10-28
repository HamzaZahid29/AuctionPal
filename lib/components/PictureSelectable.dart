import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PictureSelectable extends StatefulWidget {
  List<XFile> fileList;
  int selected;


  PictureSelectable(this.fileList, this.selected);

  @override
  State<PictureSelectable> createState() => _PictureSelectableState();
}

class _PictureSelectableState extends State<PictureSelectable> {


  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.fileList.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                widget.selected = index;
                print(widget.selected);
              });
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  border: widget.selected == index ? Border.all(width: 2, color: Colors.white): null,
                ),
                height: 80,
                width: 80,
                child: Image.file(File(widget.fileList[index].path), fit: BoxFit.cover,),
              ),
            ),
          );
        }),
      ),
    );
  }
}
