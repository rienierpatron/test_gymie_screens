
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WeightSubmission extends StatelessWidget {
  const WeightSubmission({super.key});

  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: screenWidth * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Weight',
            style: TextStyle(
              color: Color(0xFF0C1214), 
              fontFamily: 'Gotham Rounded',
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}$')),
                  ],
                  decoration: InputDecoration(
                    hintText: 'Enter weight',
                    hintStyle: TextStyle(
                      fontFamily: 'Gotham Rounded',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 177, 177, 177),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 177, 177, 177),
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 177, 177, 177),
                        width: 1.5,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text(
                        'lbs',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Gotham Rounded',
                        ),
                      ),
                    ),
                    suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 100,
                height: 55,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 56,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(56),
                    color: Color(0xFFFFFFFF),
                    border: Border.all(color: Color(0xFF69E48E)),
                    boxShadow: [
                        BoxShadow(
                          color: Color(0xFF0C1214).withValues(alpha: 0.8),
                          offset: Offset(0, 3),
                          blurRadius: 0,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Offstage(),
                        Text(
                          'Submit',
                          style: TextStyle(
                            color: Color(0xFF0C1214),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}