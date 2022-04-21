import 'package:flutter/material.dart';
import 'package:workout_daily_app/Page/ProfilePage/profile_page.dart';
import 'package:workout_daily_app/colors.dart';

class DialogSuccessLogin extends StatelessWidget {
  const DialogSuccessLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      title: const Text('Login Successful!', textAlign: TextAlign.center),
      content: const Text('Welcome Back Nurdin \nClick OK to continue',
          textAlign: TextAlign.center),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
              primary: whiteColor,
              backgroundColor: greenColor),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ProfilePage())),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
