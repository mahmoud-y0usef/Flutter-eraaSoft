import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: appbar(),
      body: body(),
      floatingActionButton: floatingActionButton(),
    ),
  ));
}


 appbar() {
  return AppBar(
    centerTitle: true,
    title: Text(
      "MyApp",
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: Color.fromARGB(255, 86, 39, 143), // بنفسجي غامق
    leading: Icon(Icons.menu, color: Colors.white),
    actions: [
      Icon(Icons.notifications, color: Colors.white),
      Icon(Icons.search, color: Colors.white),
    ],
  );
}


Widget body() {
  return Image.network(
    "https://img.freepik.com/free-photo/nature-landscape-with-hand-holding-frame_23-2149389960.jpg",
    fit: BoxFit.cover,
  );
}


Widget floatingActionButton() {
  return FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add , color: Colors.white),
    backgroundColor: Color.fromARGB(255, 86, 39, 143),
  );
}
