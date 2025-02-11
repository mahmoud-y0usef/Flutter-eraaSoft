import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bmi_calc/core/colors.dart';
import 'package:bmi_calc/widgits/text.dart';

class ConatinerAppGender extends StatelessWidget {
  final String title;
  final String svgPicture;
  final int gender;
  final Function()? ontab;
  const ConatinerAppGender(
      {super.key, required this.title, required this.svgPicture , required this.gender , this.ontab});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontab,
      child: Container(
        width: 144,
        height: 195,
        decoration: BoxDecoration(
          color: gender == 1 ? ColorsApp.secondary : ColorsApp.primaryVariant,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/$svgPicture',
              width: 96,
              height: 96,
            ),
            SizedBox(
              height: 16,
            ),
            TextCustom(
              title: title,
              color: ColorsApp.secondaryVariant,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
            )
          ],
        ),
      ),
    );
  }
}

class ConatainerSlideHeight extends StatefulWidget {
  final int value;
  final Function(int) onValueChanged; // Callback function to update height

  const ConatainerSlideHeight({
    super.key,
    required this.value,
    required this.onValueChanged,
  });

  @override
  State<ConatainerSlideHeight> createState() => _ConatainerSlideHeightState();
}

class _ConatainerSlideHeightState extends State<ConatainerSlideHeight> {
  late double _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.value.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsApp.primaryVariant,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                TextCustom(
                  title: "Height",
                  color: ColorsApp.secondaryVariant,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextCustom(
                      title: _currentValue.toStringAsFixed(0),
                      color: ColorsApp.tertiary,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    ),
                    const SizedBox(width: 5),
                    TextCustom(
                      title: "cm",
                      color: ColorsApp.secondaryVariant,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    ),
                  ],
                ),
                Slider(
                  value: _currentValue,
                  min: 60,
                  max: 220,
                  divisions: 160,
                  label: _currentValue.toStringAsFixed(0),
                  onChanged: (value) {
                    setState(() {
                      _currentValue = value;
                    });
                    widget.onValueChanged(_currentValue.toInt());
                  },
                  activeColor: ColorsApp.fourth,
                  inactiveColor: ColorsApp.secondaryVariant,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class Containerwh extends StatelessWidget {
  final  onPressed1 , onPressed2;
  final String title;
  final int value;
  const Containerwh({super.key, required this.title, required this.value , this.onPressed1, this.onPressed2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      width: 155,
      height: 195,
      decoration: BoxDecoration(
        color: ColorsApp.primaryVariant,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          TextCustom(
            title: title,
            color: ColorsApp.secondaryVariant,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
          ),
          SizedBox(
            height: 5,
          ),
          TextCustom(
            title: value.toString(),
            color: ColorsApp.tertiary,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                heroTag: null,
                backgroundColor: ColorsApp.tertiaryVariant,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: onPressed1,
                child: Icon(
                  Icons.remove,
                  color: ColorsApp.tertiary,
                ),
              ),
              FloatingActionButton(
                heroTag: null,
                backgroundColor: ColorsApp.tertiaryVariant,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: onPressed2,
                child: Icon(Icons.add, color: ColorsApp.tertiary),
              ),
            ],
          )
        ],
      ),
    );
  }
}
