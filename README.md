# aaa

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.


## 这个demo学习了TabBar的知识
```flutter

import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    void _onTapHandler(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      // fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text("Explore"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text("History"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text("List"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("My"),
        ),
      ],
    );
  }
}
```