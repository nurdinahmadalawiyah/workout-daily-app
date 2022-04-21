import 'package:flutter/widgets.dart';
import 'package:workout_daily_app/colors.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:10, left: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Nurdin A. Alawiyah',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: secondaryColor),
          ),
          SizedBox(height: 5),
          Text(
            'Collage Student',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: secondaryColor),
          ),
        ],
      ),
    );
  }
}
