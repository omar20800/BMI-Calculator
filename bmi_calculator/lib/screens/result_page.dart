// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/result_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmi,
      required this.status,
      required this.message});
  final double bmi;
  final String status;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        backgroundColor: AppColours.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text('Your Result',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              ResultCard(status: status, bmi: bmi, message: message),
              CustomButton(
                text: 'RE-CALCULATE',
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
