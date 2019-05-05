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

      /// 隐藏debug
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
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
            // IconButton(
            //   icon: Icon(Icons.more_horiz),
            //   tooltip: 'Navigration',
            //   onPressed: () => debugPrint('Navigration button is pressed.'),
            // ),
          ],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('Navigration button is pressed.'),
          ),
          bottom: TabBar(
            unselectedLabelColor: Colors.black12,
            indicatorColor: Colors.black12,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
            Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
        drawer: Container(
          color: Colors.red,
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('this is drawer')
            ],
          ),
        ),
      ),
    );
  }
}
