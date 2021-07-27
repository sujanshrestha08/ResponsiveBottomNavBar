// import 'dart:html';
// import 'dart:ui';

import 'package:animationnavbar/add.dart';
import 'package:animationnavbar/categories.dart';
import 'package:animationnavbar/charts.dart';
import 'package:animationnavbar/home.dart';
import 'package:animationnavbar/settings.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  final screens = [
    Home(),
    Categories(),
    Add(),
    Charts(),
    Settings(),
    // Center(child: Text("Home", style: TextStyle(fontSize: 50))),
    // Center(child: Text("categories", style: TextStyle(fontSize: 50))),
    // Center(child: Text("Add", style: TextStyle(fontSize: 50))),
    // Center(child: Text("Charts", style: TextStyle(fontSize: 50))),
    // Center(child: Text("Settings", style: TextStyle(fontSize: 50))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Bottom Navigation Bar"),
      //   centerTitle: true,
      // ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      // Center(
      //   child: Text(
      //     "Home",
      //     style: TextStyle(fontSize: 60),
      //   ),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple[700],
        selectedItemColor: Colors.white,
        // unselectedFontSize: 10.00,
        // selectedFontSize: 14.00,
        // iconSize: 40,
        unselectedItemColor: Colors.grey[200],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "categories",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: "Charts",
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.lime,
          ),
        ],
      ),
    );
  }
}
