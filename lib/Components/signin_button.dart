import 'package:flutter/material.dart';
import 'package:workout_daily_app/colors.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key, required this.onTap,
  }) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        width: size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: secondaryColor,
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 40,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: const Text(
          'Sign In',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: whiteColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
