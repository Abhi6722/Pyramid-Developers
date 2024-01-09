import 'package:flutter/material.dart';
import 'package:pyramid_developers/widgets/challenge_card.dart';

class Challenges extends StatelessWidget {
  const Challenges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Challenge',
          style: TextStyle(
            color: Color(0xFF191D1A),
            fontSize: 18,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
            height: 0.07,
          ),
        ),
        SizedBox(height: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ChallengeCard(title: "Plank Challenge", icon: "assets/icons/plank.png", textColor: Colors.black, bgColor: Color(0XFFBBF246),),
              SizedBox(width: 16,),
              ChallengeCard(title: "Sprint Challenge", icon: "assets/icons/sprint.png", textColor: Colors.white, bgColor: Color(0XFF192126),),
              SizedBox(width: 16,),
              ChallengeCard(title: "Squat Challenge", icon: "assets/icons/squat.png", textColor: Colors.black, bgColor: Color(0XFFFFFFFF),),
              SizedBox(width: 16,),
              ChallengeCard(title: "Demo Challenge", icon: "assets/icons/plank.png", textColor: Colors.black, bgColor: Color(0XFFBBF246),),
            ],
          ),
        )
      ],
    );
  }
}
