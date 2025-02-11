import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';
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
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            globals.isMale = true;
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: globals.isMale
                                    ? AppColours.accentColor
                                    : AppColours.secondaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  color: Colors.white,
                                  size: 100,
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            globals.isMale = false;
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: globals.isMale
                                    ? AppColours.secondaryColor
                                    : AppColours.accentColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  color: Colors.white,
                                  size: 100,
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ]),
                );
  }
}