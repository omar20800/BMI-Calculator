import 'package:bmi_calculator/methods/result_message.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/gender_selector.dart';
import 'package:bmi_calculator/widgets/height_selector.dart';
import 'package:bmi_calculator/widgets/weight_selector.dart';
import 'package:bmi_calculator/widgets/age_selector.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:bmi_calculator/methods/bmi_get.dart';
import 'package:bmi_calculator/methods/bmi_check.dart';
import 'package:bmi_calculator/globals.dart' as globals;

class Infopage extends StatefulWidget {
  Infopage({super.key});
  double bmi = 0;
  String status = '';
  @override
  State<Infopage> createState() => _InfopageState();
}

class _InfopageState extends State<Infopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColours.primaryColor,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI Calculator',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          backgroundColor: AppColours.primaryColor,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Column(children: [
              GenderSelector(),
              SizedBox(
                height: 20,
              ),
              HeightSelector(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(
                  children: [
                    WeightSelector(),
                    SizedBox(
                      width: 20,
                    ),
                    AgeSelector(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              CustomButton(
                text: 'CALCULATE',
                onPressed: () {
                  widget.bmi = bmi_get(globals.height, globals.weight);
                  widget.status = bmiCheck(
                    bmi: widget.bmi,
                  );
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                                bmi: widget.bmi,
                                status: widget.status,
                                message: resultMessage(status: widget.status),
                              )));
                },
              )
            ]))));
  }
}
