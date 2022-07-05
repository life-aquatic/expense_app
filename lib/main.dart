import 'package:flutter/material.dart';

void main() => runApp(ExpApp());

class ExpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'some expense app',
      home: ExpHomepage(),
    );
  }
}

class ExpHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("vasya"),
      ),
      body: Text("ahaha"),
    );
  }
}
