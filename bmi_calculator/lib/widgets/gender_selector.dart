import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';
import 'package:bmi_calculator/widgets/gender_box.dart';
import 'package:bmi_calculator/globals.dart' as globals;

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(children: [
        GenderBox(
            color: globals.isMale
                ? AppColours.accentColor
                : AppColours.secondaryColor,
            icon: Icons.male,
            text: "Male",
            onTap: () {
              setState(() {
                globals.isMale = true;
              });
            }),
        SizedBox(
          width: 20,
        ),
        GenderBox(
            color: globals.isMale
                ? AppColours.secondaryColor
                : AppColours.accentColor,
            icon: Icons.female,
            text: "Female",
            onTap: () {
              setState(() {
                globals.isMale = false;
              });
            })
      ]),
    );
  }
}
