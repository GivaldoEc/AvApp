import 'package:avapp/repo/const/themes/colors.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: clearestGreen,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: deepestGreen
            ),
            child: Center(
              child: Icon(
                Icons.settings,
                color: Colors.white,
                size: 70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
