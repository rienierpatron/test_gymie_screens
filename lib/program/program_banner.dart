import 'package:flutter/material.dart';

class ProgramBanner extends StatefulWidget {
  const ProgramBanner({super.key});
  @override
  State<ProgramBanner> createState() {
    return _ProgramBanner();
  }
}

class _ProgramBanner extends State<ProgramBanner> {
  @override
  Widget build(context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: 300,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTExL3RwMjYxZGVzaWduLWZhY2Vib29rZXZlbnRjb3Zlci0wMDItMzQ5LmpwZw.jpg',
            ),
            fit: BoxFit.fill,
            alignment: Alignment.center,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 64),
                  child: RawMaterialButton(
                    onPressed: () {
                      // Your action
                    },
                    fillColor: Colors.white,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15), // Adjust size here
                    child: Image.asset(
                      'assets/images/arrow_back.png',
                      scale: 3,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 145),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color(0xFFF3EBDD), // Match the light beige background
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/muscle.png', // Replace with your actual asset path
                        width: 15,
                        height: 15,
                      ),
                      SizedBox(width: 6),
                      Text(
                        '450XP',
                        style: TextStyle(
                          color: Color(0xFF6B4EFF), // Purple text color (match the original)
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: screenWidth - 185, top: 110),
                  child: RawMaterialButton(
                    onPressed: () {
                      // Your action
                    },
                    fillColor: Colors.white,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15), // Adjust size here
                    child: Image.asset(
                      'assets/images/gymie_green.png',
                      scale: 2,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}