import 'package:flutter/material.dart';
import 'package:workout_daily_app/colors.dart';

Container ImageProfile(Size size) {
  return Container(
    margin: const EdgeInsets.only(top: 155, left: 50),
    height: size.height * 0.15,
    width: size.width * 0.2,
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
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(
        'assets/images/profile.jpeg',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    ),
  );
}
