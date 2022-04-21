import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:workout_daily_app/Page/SignInPage/signin_page.dart';
import 'package:workout_daily_app/colors.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(top: 40),
      icon: const Icon(IconlyLight.arrow_left_2),
      color: whiteColor,
      onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignInPage()));
      },
    );
  }
}