import 'package:flutter/material.dart';
import 'quots.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff273238),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Daily Motivation',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          backgroundColor: Color(0xff273238),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 40),
              Image(
                image: AssetImage('assets/images/quote.png'),
                width: 200,
                height: 200,
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '"${getRandomQuote()}"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    getRandomQuote();
                  });
                },
                child: Text(
                  'Get New Quote',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffD08C37),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}