import 'dart:ffi';

import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.white,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "lib/assets/images/logo.png",
              height: 150,
              width: 150,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lets Count And Have Fun ✨",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: Column(
                children: [
                  Divider(
                    color: const Color.fromARGB(143, 0, 0, 0),
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
