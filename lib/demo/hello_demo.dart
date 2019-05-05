import 'package:flutter/material.dart';

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
