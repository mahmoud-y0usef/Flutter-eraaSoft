import 'package:flutter/material.dart';
import 'widgits/custome_button.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

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
            Divider(
              color: const Color.fromARGB(143, 0, 0, 0),
              thickness: 1,
              indent: 50,
              endIndent: 50,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(120, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Counter : $counter",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  CustomeButton(
                    title: "Increment",
                    color: Colors.green,
                    onPressed: () {
                      setState(() {
                        counter = counter + 1;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomeButton(
                    title: "Decrement",
                    color: Colors.deepOrange,
                    onPressed: () {
                      setState(() {
                        if (counter > 0) {
                          setState(() {
                            counter = counter - 1;
                          });
                        } else
                          return;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomeButton(
                    title: "Reset",
                    color: Colors.red,
                    onPressed: () {
                      if (counter > 0)
                        setState(() {
                          counter = 0;
                        });
                      else
                        return;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
