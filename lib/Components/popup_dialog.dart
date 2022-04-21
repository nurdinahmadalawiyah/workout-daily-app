import 'package:flutter/material.dart';

class PopUpDialog extends StatelessWidget {
  const PopUpDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Sorry!'),
      content: const Text('Sorry! This feature is still in development.'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
