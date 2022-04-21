import 'package:flutter/material.dart';
import 'package:workout_daily_app/colors.dart';

class InputContainer extends StatelessWidget {
  const InputContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 40,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: child);
  }
}
