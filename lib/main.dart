import 'package:flutter/material.dart';
import 'package:gymie_screens/program/program_details.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ProgramDetails(),
        ),
      ),
    ),
  );
}