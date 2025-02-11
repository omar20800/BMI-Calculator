import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';
import 'package:bmi_calculator/globals.dart' as globals;

class WeightSelector extends StatefulWidget {
  const WeightSelector({super.key});

  @override
  State<WeightSelector> createState() => _WeightSelectorState();
}

class _WeightSelectorState extends State<WeightSelector> {
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
                            "Weight",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            globals.weight.toString(),
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
                                  setState(() {
                                    globals.weight--;
                                  });
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
                                  setState(() {
                                    globals.weight++;
                                  });
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