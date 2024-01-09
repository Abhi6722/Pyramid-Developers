import 'package:flutter/material.dart';
import 'package:pyramid_developers/widgets/exercise_card.dart';

class FastWarmup extends StatelessWidget {
  const FastWarmup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fast Warmup',
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
                      title: "Leg excercises",
                      imageUrl: "assets/images/leg_excercises.png",
                      duration: "10 min",
                      difficulty: "Beginner"),
                  SizedBox(width: 16,),
                  ExerciseCard(
                      title: "Backward lunges",
                      imageUrl: "assets/images/backward_lunges.png",
                      duration: "5 min",
                      difficulty: "Beginner"),
                  SizedBox(width: 16,),
                  ExerciseCard(
                      title: "Backward lunges",
                      imageUrl: "assets/images/backward_lunges.png",
                      duration: "5 min",
                      difficulty: "Beginner"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
