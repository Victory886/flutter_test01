import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('header'.toUpperCase()),
            decoration: BoxDecoration(color: Colors.grey[100]),
          ),
          ListTile(
            title: Text("Messages", textAlign: TextAlign.left),
            leading: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
          ),
          ListTile(
            title: Text("Favorite", textAlign: TextAlign.left),
            leading: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
          ),
          ListTile(
            title: Text("Settings", textAlign: TextAlign.left),
            leading: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
          ),
        ],
      ),
    );
  }
}