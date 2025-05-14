import 'package:flutter/material.dart';
import 'package:gymie_screens/leaderboard/weight_submission.dart';
import 'package:gymie_screens/leaderboard/ranking.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class LeaderboardContainer extends StatelessWidget {
  const LeaderboardContainer({super.key});

  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      margin: EdgeInsets.only(top: 10),
      width: screenWidth * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [
            Color(0xFF99DDFF),
            Color(0xFFE5F7FF),
          ],
          begin: startAlignment,
          end: endAlignment,
          stops: [0.5, 1],
        ),
      ),
      child: Column(
        children: [
          WeightSubmission(),
          SizedBox(height: 10),
          Ranking(),
        ],
      ),
    );
  }
}