import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';
import 'package:bmi_calculator/globals.dart' as globals;

class HeightSelector extends StatefulWidget {
  HeightSelector({super.key});
  

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: AppColours.secondaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              const Text(
                "Height",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    globals.height.toInt().toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "cm",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Slider(
                value: globals.height,
                onChanged: (value) {
                  setState(() {
                    globals.height = value;
                  });
                },
                min: 120,
                max: 220,
                activeColor: AppColours.accentColor,
              ),
            ],
          )),
    );
  }
}
