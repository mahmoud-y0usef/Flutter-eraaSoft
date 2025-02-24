import 'package:massenger_app/core/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:massenger_app/core/route.dart';
import 'package:massenger_app/widgits/appbar.dart';
import 'package:massenger_app/widgits/container.dart';
import 'package:massenger_app/widgits/nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.tertiary,
      appBar: AppBarCustom(),
      bottomNavigationBar: Nav(),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 16),
          Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: ColorsApp.secondary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),

              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: ColorsApp.primary,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: ColorsApp.primary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}
