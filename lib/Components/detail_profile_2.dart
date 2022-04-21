import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_daily_app/colors.dart';

class DetailProfile2 extends StatelessWidget {
  const DetailProfile2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: SvgPicture.asset(
                "assets/icons/workout_time.svg",
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Workout Time",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 13,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 10),
            const Text(
              "169 Min",
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: SvgPicture.asset(
                "assets/icons/heart_rate.svg",
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Heart Rate",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 13,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 10),
            const Text(
              "60 Beats",
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: SvgPicture.asset(
                "assets/icons/calories_burned.svg",
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Calories Burned",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 13,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 10),
            const Text(
              "3369 KCAL",
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}