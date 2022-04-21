import 'package:flutter/material.dart';
import 'package:workout_daily_app/colors.dart';

class DetailProfile1 extends StatelessWidget {
  const DetailProfile1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: const [
            Text(
              "2",
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Workout\nProgram",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 13,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
        Column(
          children: const [
            Text(
              "5",
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Gallery\nPost",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 13,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
        Column(
          children: const [
            Text(
              "3",
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Bookmark\nWorkout",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 13,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ],
    );
  }
}