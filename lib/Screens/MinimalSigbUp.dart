import 'package:auctionpal/Screens/OTPScreen.dart';
import 'package:auctionpal/Screens/completion.dart';
import 'package:flutter/material.dart';
import 'package:auctionpal/components/NextBtn.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:auctionpal/components/createorlog.dart';
import 'package:auctionpal/components/steps.dart';
import 'package:provider/provider.dart';
import '../Models/User.dart';
import '../Models/UserProvider.dart';
import 'EmailPass.dart';

class MinimalSignUp extends StatefulWidget {
  const MinimalSignUp({super.key});
  static String ID = 'MinimalSignUp';

  @override
  State<MinimalSignUp> createState() => _MinimalSignUpState();
}

class _MinimalSignUpState extends State<MinimalSignUp> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  String emai = 'fffff';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Let's setup your account",
                textAlign: TextAlign.center,
                style: medTextflyer,
              ),
              Padding(
                padding: EdgeInsets.all(7),
                child: CreateOrLog(),
              ),
              Container(
                height: 340,
                child: PageView(
                  children: [
                    EmailPassword(emailcontroller, passwordController,
                        repasswordController),
                    OTPScreen(),
                    Complete(),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  final userProvider = Provider.of<UserProvider>(context, listen: false);
                  userProvider.createUser(emailcontroller.text,passwordController.text);
                },
                child: NextBtn(),
              ),
              Text(
                emailcontroller.text,
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              Consumer<UserProvider>(
                builder: (context, userProvider, child) {
                  return Text(
                    userProvider.userlog.email,
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
