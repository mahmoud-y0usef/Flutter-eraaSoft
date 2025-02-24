import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        backgroundColor: Colors.white,
        labelTextStyle: MaterialStateProperty.all(
          const TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ),
      child: NavigationBar(
        destinations: [
          _buildNavItem('assets/icons/chat.svg', 'Chats', 6),
          _buildNavItem('assets/icons/video.svg', 'Calls', 6),
          _buildNavItem('assets/icons/people.svg', 'People', 0),
          _buildNavItem('assets/icons/stories.svg', 'Stories', 1),
        ],
      ),
    );
  }

  NavigationDestination _buildNavItem(String iconPath, String label, int badgeCount) {
    return NavigationDestination(
      icon: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 30,
            height: 30,
          ),
          if (badgeCount > 0)
            Positioned(
              top: -2,
              right: -2,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                constraints: const BoxConstraints(
                  minWidth: 18,
                  minHeight: 18,
                ),
                child: Text(
                  badgeCount.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
      label: label,
    );
  }
}
