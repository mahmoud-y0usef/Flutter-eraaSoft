import 'package:flutter/material.dart';
import 'package:massenger_app/core/colors.dart';
import 'package:massenger_app/widgits/text.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);
  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorsApp.tertiary,
      shadowColor: ColorsApp.tertiaryVariant,
      title: TextCustom(
          title: 'Chats',
          color: ColorsApp.primary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Inter'),
      centerTitle: false,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsApp.fifth,
          ),
          child: IconButton(
            icon: Icon(Icons.menu, color: ColorsApp.primary),
            onPressed: () {
              // TODO: Open Drawer or Handle Click
              print("Menu button clicked");
            },
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsApp.fifth,
            ),
            child: IconButton(
                icon: Icon(Icons.camera_alt, color: ColorsApp.primary),
                onPressed: () {
                  // TODO: Open Camera or Handle Click
                  print("Camera button clicked");
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsApp.fifth,
            ),
            child: IconButton(
                icon: Icon(Icons.edit, color: ColorsApp.primary),
                onPressed: () {
                  // TODO: Open Edit or Handle Click
                  print("Edit button clicked");
                }),
          ),
        ),
      ],
    );
  }
}
