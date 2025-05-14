import 'package:flutter/material.dart';
import 'package:gymie_screens/program/program_banner.dart';
import 'package:gymie_screens/leaderboard/leaderboard_container.dart';

class ProgramDetails extends StatefulWidget {
  const ProgramDetails({super.key});
  @override
  State<ProgramDetails> createState() {
    return _ProgramDetails();
  }
}

class _ProgramDetails extends State<ProgramDetails> {
  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        children: [
          // ProgramBanner(),
          Container(
            width: screenWidth * 0.95,
            margin: EdgeInsets.only(top: 15),
            child:Text(
              'Leaderboard',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Gotham Rounded',
                fontSize: 16,
                color: Color(0xFF0C1214),
              ),
            ),
          ),
          LeaderboardContainer(),
        ],
      ),
    );
  }
}