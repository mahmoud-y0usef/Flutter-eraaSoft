import 'package:flutter/material.dart';
import 'package:massenger_app/core/colors.dart';
import 'package:massenger_app/widgits/appbar.dart';
import 'package:massenger_app/widgits/nav.dart';

final List<Map<String, dynamic>> activeUsers = [
  {
    "name": "William Henry Gates",
    "avatar": "assets/images/bill_gates.jpg",
    "isOnline": true
  },
  {
    "name": "Jeff Bezos",
    "avatar": "assets/images/jeff_bezos.jpg",
    "isOnline": true
  },
  {
    "name": "Mark Zuckerberg",
    "avatar": "assets/images/mark_zuckerberg.jpg",
    "isOnline": true
  },
  {
    "name": "Warren Buffett",
    "avatar": "assets/images/warren_buffett.jpg",
    "isOnline": true
  },
  {
    "name": "Warren Buffett",
    "avatar": "assets/images/warren_buffett.jpg",
    "isOnline": true
  },
  {
    "name": "Warren Buffett",
    "avatar": "assets/images/warren_buffett.jpg",
    "isOnline": true
  },
  {
    "name": "Warren Buffett",
    "avatar": "assets/images/warren_buffett.jpg",
    "isOnline": true
  },
];

final List<Map<String, dynamic>> chatList = [
  {
    "name": "Warren Buffett",
    "message": "Hanif can you marry my Daughter..",
    "time": "10:20 pm",
    "avatar": "assets/images/warren_buffett.jpg",
    "isOnline": true
  },
  {
    "name": "Mark Zuckerberg",
    "message": "Asraful are you available for...",
    "time": "11:10 pm",
    "avatar": "assets/images/mark_zuckerberg.jpg",
    "isOnline": true
  },
  {
    "name": "William Henry Gates",
    "message": "Please reply to me Asraful...",
    "time": "12:00 am",
    "avatar": "assets/images/bill_gates.jpg",
    "isOnline": true
  },
  {
    "name": "Vladimir Putin",
    "message": "Hey Putin don't disturb me, I am bu...",
    "time": "12:00 am",
    "avatar": "assets/images/putin.jpg",
    "isOnline": false
  },
  {
    "name": "Jeff Bezos",
    "message": "My daughter is crying for you hanif...",
    "time": "09:00 am",
    "avatar": "assets/images/jeff_bezos.jpg",
    "isOnline": true
  },
  {
    "name": "Barack Obama",
    "message": "I want to meet with you hanif ...",
    "time": "11:00 am",
    "avatar": "assets/images/obama.jpg",
    "isOnline": false
  },
  {
    "name": "Barack Obama",
    "message": "I want to meet with you hanif ...",
    "time": "11:00 am",
    "avatar": "assets/images/obama.jpg",
    "isOnline": false
  },
  {
    "name": "Barack Obama",
    "message": "I want to meet with you hanif ...",
    "time": "11:00 am",
    "avatar": "assets/images/obama.jpg",
    "isOnline": false
  },
  {
    "name": "Barack Obama",
    "message": "I want to meet with you hanif ...",
    "time": "11:00 am",
    "avatar": "assets/images/obama.jpg",
    "isOnline": false
  },
  {
    "name": "Barack Obama",
    "message": "I want to meet with you hanif ...",
    "time": "11:00 am",
    "avatar": "assets/images/obama.jpg",
    "isOnline": false
  },
  {
    "name": "Barack Obama",
    "message": "I want to meet with you hanif ...",
    "time": "11:00 am",
    "avatar": "assets/images/obama.jpg",
    "isOnline": false
  },
  {
    "name": "Barack Obama",
    "message": "I want to meet with you hanif ...",
    "time": "11:00 am",
    "avatar": "assets/images/obama.jpg",
    "isOnline": false
  },
  {
    "name": "Barack Obama",
    "message": "I want to meet with you hanif ...",
    "time": "11:00 am",
    "avatar": "assets/images/obama.jpg",
    "isOnline": false
  },
  {
    "name": "Barack Obama",
    "message": "I want to meet with you hanif ...",
    "time": "11:00 am",
    "avatar": "assets/images/obama.jpg",
    "isOnline": false
  },
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustom(),
      bottomNavigationBar: Nav(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
          ),

          SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: activeUsers.length,
              itemBuilder: (context, index) {
                final user = activeUsers[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(user["avatar"]),
                            radius: 30,
                          ),
                          if (user["isOnline"])
                            Positioned(
                              bottom: 2,
                              right: 2,
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: 70,
                        child: Text(
                          user["name"],
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),



          Expanded(
            child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                final chat = chatList[index];
                return ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(chat["avatar"]),
                        radius: 24,
                      ),
                      if (chat["isOnline"])
                        Positioned(
                          bottom: 2,
                          right: 2,
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                          ),
                        ),
                    ],
                  ),
                  title: Text(
                    chat["name"],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    chat["message"],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  trailing: Text(
                    chat["time"],
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  onTap: () {

                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
