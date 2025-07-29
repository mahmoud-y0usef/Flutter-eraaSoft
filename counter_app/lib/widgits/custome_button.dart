import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final String title;
  final Color color;
  final void Function()? onPressed;
  const CustomeButton({super.key , this.onPressed , required this.title , required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(300, 50),
          backgroundColor: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ));
  }
}
