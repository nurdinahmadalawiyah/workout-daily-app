import 'package:flutter/material.dart';
import 'package:workout_daily_app/colors.dart';

class DialogFailedLogin extends StatelessWidget {
  const DialogFailedLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      title: const Text('Login Failed!', textAlign: TextAlign.center),
      content: const Text(
          'Username and password you entered is wrong. Please try again!',
          textAlign: TextAlign.center),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
              primary: whiteColor, backgroundColor: redColor),
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
