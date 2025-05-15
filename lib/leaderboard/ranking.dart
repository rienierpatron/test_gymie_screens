
import 'package:flutter/material.dart';

// I made it stateful considering that the content will change when there is a ranking already
class Ranking extends StatelessWidget {
  const Ranking({super.key});

  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: screenWidth * 0.95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            child: Image.asset(
              'assets/images/star_shield.png',
              width: 40,
              height: 40,
            ),
          ),
          Text(
            'Curious where you rank?',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Gotham Rounded',
              fontSize: 24,
              color: Color(0xFF0C1214),
            ),
          ),
          Text(
            'Submit your score now and claim your spot!',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Gotham Rounded',
              fontSize: 14,
              color: Color(0xFF737C80),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}