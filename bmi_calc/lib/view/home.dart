import 'package:bmi_calc/core/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc/core/route.dart';
import 'package:bmi_calc/widgits/appbar.dart';
import 'package:bmi_calc/widgits/container.dart';
import 'package:bmi_calc/core/BMIcalc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double Height = 120;
  late double Weight = 60;
  late double Age = 25;
  late int male = 0;
  late int female = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primary,
      appBar: AppBarCustom(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: ConatinerAppGender(
                            ontab: () {
                              setState(() {
                                male = 1;
                                female = 0;
                              });
                            },
                            title: "Male",
                            svgPicture: "male.svg",
                            gender: male,
                          ),
                        ),
                        SizedBox(width: 9),
                        Expanded(
                          child: ConatinerAppGender(
                            ontab: () {
                              setState(() {
                                female = 1;
                                male = 0;
                              });
                            },
                            title: "Female",
                            svgPicture: "female.svg",
                            gender: female,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  ConatainerSlideHeight(
                    // Container for height
                    value: Height.toInt(), onValueChanged: (int) {
                      setState(() {
                        Height = int.toDouble();
                      });
                  },
                  ),
                  SizedBox(height: 29),
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Containerwh(
                            title: "Weight",
                            value: Weight.toInt(),
                            onPressed1: () {
                              if (Weight > 1) {
                                setState(() {
                                  Weight--;
                                });
                              }
                            },
                            onPressed2: () {
                              if (Weight < 500) {
                                setState(() {
                                  Weight++;
                                });
                              }
                            },
                          ),
                        ),
                        SizedBox(width: 9),
                        Expanded(
                          child: Containerwh(
                            title: "Age",
                            value: Age.toInt(),
                            onPressed1: () {
                              if (Age > 1) {
                                setState(() {
                                  Age--;
                                });
                              }
                            },
                            onPressed2: () {
                              if (Age < 120) {
                                setState(() {
                                  Age++;
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if(male== 0 && female == 0)
                      {
                        showCupertinoModalPopup(context: context, builder:
                        (context){
                          return CupertinoAlertDialog(
                            title: Text("Please Enter Your Gender"),
                        );
                        });
                      }else {
                      BmiCalc calc = BmiCalc(height: Height, weight: Weight);
                      Navigator.pushNamed(context, Routes.result, arguments: {
                        'bmi': calc.getBmi().toStringAsFixed(2),
                        'result': calc.getResult(),
                        'interpretation': calc.getInterpretation(),
                        'gender': male == 1 ? 1 : 2,
                        'age': Age,
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsApp.fourth,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Calculate",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
