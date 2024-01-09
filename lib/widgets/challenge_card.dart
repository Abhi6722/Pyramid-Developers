import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  final String title;
  final String icon;
  final Color textColor;
  final Color bgColor;

  const ChallengeCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.textColor,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 110,
      child: Stack(
        children: [
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              color:bgColor,
              borderRadius: BorderRadius.circular(9),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Center(
              child: SizedBox(
                width: 60,
                height: 60,
                child: Stack(
                    children: [
                      Image(image: AssetImage(icon)),
                    ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 8,
            top: 54,
            child: SizedBox(
              width: 94,
              child: Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize: 14,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
