import 'package:flutter/material.dart';
import 'package:bmi_calc/core/colors.dart';
import 'package:bmi_calc/widgits/appbar.dart';
import 'package:bmi_calc/widgits/text.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String bmi;
  final String interpretation;
  final int gender;
  final double age;

  const ResultPage({
    super.key,
    required this.result,
    required this.bmi,
    required this.interpretation,
    required this.gender,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primary,
      appBar: AppBarCustom(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
        child: Column(
          children: [
            TextCustom(
              title: 'Your Result',
              color: ColorsApp.tertiary,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorsApp.primaryVariant,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 58, horizontal: 35),
                  child: Column(

                    children: [
                      TextCustom(
                        title: result,
                        color: ColorsApp.fourthVariant,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                      const SizedBox(height: 20),
                      TextCustom(
                        title: bmi,
                        color: ColorsApp.tertiary,
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                      const SizedBox(height: 20),
                      TextCustom(
                        title: interpretation,
                        color: ColorsApp.tertiaryVariant,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsApp.fourth,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Recalculate",
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
