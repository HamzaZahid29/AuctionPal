import 'package:flutter/material.dart';

import 'colors.dart';

InputDecoration EmailPass = InputDecoration(
    hintStyle: TextStyle(color: Colors.grey.shade600),
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: appMainColor),
    ),
    contentPadding: EdgeInsets.all(15));
InputDecoration InputNormal = InputDecoration(
    hintStyle: TextStyle(color: Colors.grey.shade600),
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: appMainColor),
    ),
    contentPadding: EdgeInsets.all(15));
