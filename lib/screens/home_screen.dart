import 'package:flutter/material.dart';
import 'package:pyramid_developers/widgets/best_for_you.dart';
import 'package:pyramid_developers/widgets/challenge.dart';
import 'package:pyramid_developers/widgets/fast_warmup.dart';
import 'package:pyramid_developers/widgets/home_screen_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0XFFF7F6FA),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100,),
              HomeScreenBanner(),
              SizedBox(height: 24,),
              BestForYou(),
              SizedBox(height: 30,),
              Challenges(),
              SizedBox(height: 30,),
              FastWarmup(),
            ],
          ),
        ),
      ),
    );
  }
}
