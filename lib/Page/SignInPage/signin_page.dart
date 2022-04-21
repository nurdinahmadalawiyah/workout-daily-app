import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iconly/iconly.dart';
import 'package:workout_daily_app/Components/dialog_failed_login.dart';
import 'package:workout_daily_app/Components/dialog_success_login.dart';
import 'package:workout_daily_app/Components/popup_dialog.dart';
import 'package:workout_daily_app/Components/signin_button.dart';
import 'package:workout_daily_app/Components/social_icon.dart';
import 'package:workout_daily_app/Components/textfield_input.dart';
import 'package:workout_daily_app/Components/textfield_password.dart';
import 'package:workout_daily_app/colors.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String textUsername = "";
  String textPassword = "";
  String username = "nurdin";
  String password = "12345";

  void validasiLogin() {
    if (textUsername == "" && textPassword == "") {
      Fluttertoast.showToast(
        msg: "Username and Password must be filled",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        fontSize: 16,
        backgroundColor: redColor);
      return;
    }
    if (textUsername == username && textPassword == password) {
      setState(() {
        showDialog(
           context: context,
           builder: (BuildContext context) => const DialogSuccessLogin(),
        );
      });
    } else if (textUsername != username || textPassword != password) {
      setState(() {
        showDialog(
           context: context,
           builder: (BuildContext context) => const DialogFailedLogin(),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double defaultSignInSize = size.height - (size.height * 0.1);

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: SizedBox(
                width: size.width,
                height: defaultSignInSize,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'SIGN IN',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          color: secondaryColor),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Login to your Account',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          color: secondaryColor),
                    ),
                    const SizedBox(height: 35),
                    TextFieldInput(
                      onChanged: (e) => textUsername = e,
                      icon: IconlyLight.user,
                      hintText: 'Username',
                    ),
                    const SizedBox(height: 10),
                    TextFieldPassword(
                      onChanged: (e) => textPassword = e,
                      icon: IconlyLight.password,
                      hintText: 'Password',
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Forgot Password ? ",
                          style: TextStyle(color: secondaryColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => const PopUpDialog(),
                            );
                          },
                          child: const Text(
                            'Click Here',
                            style: TextStyle(color: primaryColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    SignInButton(onTap: () {
                      validasiLogin();
                    }),
                    const SizedBox(height: 20),
                    const Text(
                      'Or sign in with',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          color: secondaryColor),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SocialIcon(
                          iconSrc: "assets/icons/google.svg",
                          press: () => showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  const PopUpDialog()),
                        ),
                        SocialIcon(
                          iconSrc: "assets/icons/apple.svg",
                          press: () => showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  const PopUpDialog()),
                        ),
                        SocialIcon(
                          iconSrc: "assets/icons/facebook.svg",
                          press: () => showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  const PopUpDialog()),
                        ),
                        SocialIcon(
                          iconSrc: "assets/icons/twitter.svg",
                          press: () => showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  const PopUpDialog()),
                        ),
                      ],
                    ),
                    const SizedBox(height: 80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Don't have an Account ? ",
                          style: TextStyle(color: secondaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => const PopUpDialog(),
                            );
                          },
                          child: const Text(
                            'Sign Up now',
                            style: TextStyle(color: primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
