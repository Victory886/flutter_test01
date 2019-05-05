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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Terry"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('search button is pressed.'),
          ),
          IconButton(
            icon: Icon(Icons.more_horiz),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('Navigration button is pressed.'),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigration',
          onPressed: () => debugPrint('Navigration button is pressed.'),
        ),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(icon: Icon(Icons.local_florist)),
            Tab(icon: Icon(Icons.change_history)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),

      // body: ListViewDemo(),
      // bottomNavigationBar: BottomNavigationBarDemo(),
      // body: ListViewDemo(),
      body: TabBarView(
        children: <Widget>[
          Icon(Icons.local_florist,size: 128.0,color: Colors.black12),
          Icon(Icons.change_history,size: 128.0,color: Colors.black12),
          Icon(Icons.directions_bike,size: 128.0,color: Colors.black12),

        ],
      ),
      ),
    );
  }
}
