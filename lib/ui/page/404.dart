import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(title: Text("Page does not exist")),
        body: Center(
            child: Text('Sorry, the page has moved',
                style: TextStyle(fontSize: 26.0))));
  }
}
