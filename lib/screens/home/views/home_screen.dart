import 'dart:math';

import 'package:expense_tracker_app/screens/home/views/main_screen.dart';
import 'package:expense_tracker_app/screens/stats/stat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var widgetList = [const MainScreen(), const StatScreen()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final selectedItem = Theme.of(context).colorScheme.secondary;
    const unSelectedItem = Colors.grey;

    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
            onTap: (val) {
              setState(() {
                index = val;
              });
            },
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  CupertinoIcons.home,
                  color: index == 0 ? selectedItem : unSelectedItem,
                ),
              ),
              BottomNavigationBarItem(
                label: "Stats",
                icon: Icon(
                  CupertinoIcons.graph_square_fill,
                  color: index == 1 ? selectedItem : unSelectedItem,
                ),
              ),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.tertiary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.primary,
              ], transform: const GradientRotation(pi / 4)),
            ),
            child: const Icon(CupertinoIcons.add)),
      ),
      body: index == 0 ? const MainScreen() : const StatScreen(),
    );
  }
}
