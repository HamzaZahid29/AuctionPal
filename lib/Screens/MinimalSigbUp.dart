import 'package:auctionpal/Screens/MainPages/MainPage.dart';
import 'package:auctionpal/Screens/OTPScreen.dart';
import 'package:auctionpal/Screens/completion.dart';
import 'package:auctionpal/components/errorwidet.dart';
import 'package:flutter/material.dart';
import 'package:auctionpal/components/NextBtn.dart';
import 'package:auctionpal/styles/AppFontStyles.dart';
import 'package:auctionpal/components/createorlog.dart';
import 'package:auctionpal/components/steps.dart';
import 'package:provider/provider.dart';
import '../Models/User.dart';
import '../Models/UserProvider.dart';
import 'EmailPass.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:lottie/lottie.dart';

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
  PageController pageController = PageController();
  String emai = 'fffff';

  @override
  void dispose() {
    Provider.of<UserProvider>(context, listen: true).errorData = '';
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ModalProgressHUD(
        inAsyncCall: Provider.of<UserProvider>(context, listen: true).isLoading,
        progressIndicator: Lottie.asset('assets/loading.json', height: 200, width: 200),
        child: Center(
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
                    controller: pageController,
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
                    final userProvider =
                        Provider.of<UserProvider>(context, listen: false);
                    if(userProvider.userCreated == true){
                       if(pageController.page! < 2){
                         pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                       }else{
                         Navigator.pushNamed(context, HomeScreen.ID);
                       }


                    }else if(userProvider.userCreated == false){
                      userProvider.createUser(emailcontroller.text, passwordController.text, repasswordController.text);
                    }

                  },
                  child:Consumer<UserProvider>(builder: (context, userProvider, child) {
                    return NextBtn(userProvider.btnText);
                  })
                ),
                Consumer<UserProvider>(builder: (context, userProvider, child) {
                  return Text(
                    userProvider.errorData,
                    style: TextStyle(color: Colors.red),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
