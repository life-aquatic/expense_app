import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'transaction.dart';

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
  List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 43.33,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Food',
      amount: 12.33,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("vasya"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Card(
            child: Container(
              width: 299,
              child: Text("summary"),
            ),
            elevation: 5,
          ),
          Card(
            color: Colors.amber,
            child: Text('list of tx'),
          ),
        ],
      ),
    );
  }
}
