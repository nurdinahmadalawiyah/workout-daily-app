import 'package:flutter/material.dart';

SizedBox BackgroundProfile(Size size) {
  return SizedBox(
    height: size.height * 0.5,
    child: Image.asset(
      'assets/images/profile.jpg',
      width: double.infinity,
      fit: BoxFit.cover,
    ),
  );
}
