import 'package:flutter/material.dart';
import 'package:bmi_calc/core/colors.dart';
import 'package:bmi_calc/widgits/text.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);
  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorsApp.primary,
      shadowColor: ColorsApp.tertiaryVariant,
      title: TextCustom(
          title: 'BMI Calculator',
          color: ColorsApp.tertiary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Inter'),
      centerTitle: true,
    );
  }
}
