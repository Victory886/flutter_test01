import 'package:flutter/material.dart';
import 'model/post.dart';
import 'demo/bottom_navigation_bar_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const App({Key key}) : super(key: key);

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
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(
            height: 16.0,
          ),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Terry"),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
      bottomNavigationBar: BottomNavigationBarDemo(),
    );
  }
}

class Hello extends StatelessWidget {
  // const Hello({Key key}) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello Terry",
        style: TextStyle(
          fontSize: 30.0,
        ),
      ),
    );
  }
}
