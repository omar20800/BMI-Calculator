import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';
import 'package:bmi_calculator/globals.dart' as globals;

class AgeSelector extends StatefulWidget {
  const AgeSelector({super.key});

  @override
  State<AgeSelector> createState() => _AgeSelectorState();
}

class _AgeSelectorState extends State<AgeSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
                        child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: AppColours.secondaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            globals.age.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (globals.age > 20) {
                                    setState(() {
                                      globals.age--;
                                    });
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    color: AppColours.accentColor2,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              InkWell(
                                onTap: () {
                                  if (globals.age < 120) {
                                    setState(() {
                                      globals.age++;
                                    });
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    color: AppColours.accentColor2,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ));
  }
}