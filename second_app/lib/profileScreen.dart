import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Profile Screen",
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          Icon(
            Icons.edit,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          )
        ],
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: Image.asset("assets/images/profile.jpg").image,
          ),
          SizedBox(height: 10),
          Text(
            "Mahmoud Yousef",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 4),
          Text(
            "Mahmoudyousef59@outlook.com",
            style: TextStyle(
              color: const Color.fromARGB(255, 206, 202, 202),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.white,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Friends",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.group,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "New Group",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.support_agent,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Support",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/facebook.png"),
                  SizedBox(width: 5),
                  Image.asset("assets/images/instagram.png"),
                  SizedBox(width: 5),
                  Image.asset("assets/images/linkedin.png"),
                  SizedBox(width: 5),
                  Image.asset("assets/images/whatsapp.png"),
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
