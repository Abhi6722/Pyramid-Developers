import 'package:flutter/material.dart';
import 'package:pyramid_developers/widgets/exercise_card.dart';

class BestForYou extends StatelessWidget {
  const BestForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Best for you',
          style: TextStyle(
            color: Color(0xFF192126),
            fontSize: 18,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        SizedBox(height: 21,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                children: [
                  ExerciseCard(
                      title: "Belly fat burner",
                      imageUrl: "assets/images/belly_fat.png",
                      duration: "10 min",
                      difficulty: "Beginner"),
                  SizedBox(width: 16,),
                  ExerciseCard(
                      title: "Lose Fat",
                      imageUrl: "assets/images/lose_fat.png",
                      duration: "10 min",
                      difficulty: "Beginner"),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  ExerciseCard(
                      title: "Plank",
                      imageUrl: "assets/images/plank.png",
                      duration: "5 min",
                      difficulty: "Expert"),
                  SizedBox(width: 16,),
                  ExerciseCard(
                      title: "Build Whider",
                      imageUrl: "assets/images/belly_fat.png",
                      duration: "30 min",
                      difficulty: "Intermediate"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
