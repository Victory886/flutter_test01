import 'package:flutter/material.dart';
// import 'model/post.dart';
// import 'demo/bottom_navigation_bar_demo.dart';
// import './demo/listView_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Terry"),
      ),

      // body: ListViewDemo(),
      // bottomNavigationBar: BottomNavigationBarDemo(),
      // body: ListViewDemo(),
      body: null,
    );
  }
}

