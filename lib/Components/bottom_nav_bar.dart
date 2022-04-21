import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workout_daily_app/Components/popup_dialog.dart';
import 'package:workout_daily_app/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      decoration: BoxDecoration(
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            iconScr: 'assets/icons/Home.svg',
            press: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => const PopUpDialog(),
              );
            },
          ),
          BottomNavItem(
            iconScr: 'assets/icons/Document.svg',
            press: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => const PopUpDialog(),
              );
            },
          ),
          BottomNavItem(
            iconScr: 'assets/icons/add.svg',
            isActive: true,
            press: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => const PopUpDialog(),
              );
            },
          ),
          BottomNavItem(
            iconScr: 'assets/icons/Bookmark.svg',
            press: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => const PopUpDialog(),
              );
            },
          ),
          BottomNavItem(
            iconScr: 'assets/icons/Setting.svg',
            press: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => const PopUpDialog(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String iconScr;
  final void Function() press;
  final bool isActive;
  const BottomNavItem({
    Key? key,
    required this.iconScr,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            iconScr,
            color: isActive ? primaryColor : secondaryColor,
          ),
        ],
      ),
    );
  }
}
