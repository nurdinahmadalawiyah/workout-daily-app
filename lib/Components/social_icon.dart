import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_daily_app/colors.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final void Function() press;
  const SocialIcon({
    Key? key,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Ink(
            padding: const EdgeInsets.all(15),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: shadowColor.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(
              iconSrc,
              height: 35,
              width: 35,
            )
        ),
      ),
    );
  }
}