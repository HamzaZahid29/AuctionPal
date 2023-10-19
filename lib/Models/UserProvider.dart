import 'package:auctionpal/Models/User.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:auctionpal/Models/User.dart';

class UserProvider with ChangeNotifier {
  bool isLoading = false;
  String errorData = '';
  bool userCreated = false;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  Userlog userlog = Userlog('', '', '');
  String btnText = 'Register';

  void createUser(String _email, String _password, String _retypePassword) {
    userlog = Userlog(_email, _password, _retypePassword);
    errorFielddHandle(_email, _password, _retypePassword);
    notifyListeners();
  }

  Future createFireBaseUser(String email, String password) async {
    try {
      isLoading = true;
      notifyListeners();
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      btnText = 'Next';
      errorData =
          'created user with email : ${firebaseAuth.currentUser?.email.toString()}';
      userCreated = true;
      isLoading = false;
      notifyListeners();
    } catch (e) {
      if (e is FirebaseAuthException) {
        if (e.code == 'email-already-in-use') {
          errorData = 'Email already verified';
        } else {
          errorData = 'Connection problem';
        }
      }
      isLoading = false;
      notifyListeners();
    }
  }

  void errorFielddHandle(
      String _email, String _password, String _retypePassword) {
    if (_password.isEmpty || _email.isEmpty || _retypePassword.isEmpty) {
      errorData = 'Please fill all fields';
    } else if (_password != _retypePassword) {
      errorData = "Both password don't match ";
    } else if (_email.isEmpty == false && _password == _retypePassword) {
      createFireBaseUser(_email, _password);
    }
  }
}
