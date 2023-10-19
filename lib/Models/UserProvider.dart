import 'package:auctionpal/Models/User.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:auctionpal/Models/User.dart';

class UserProvider with ChangeNotifier{
  Userlog userlog = Userlog('', '');

  void createUser(String _email, String _password){
    userlog = Userlog(_email, _password);
     notifyListeners();
  }
}