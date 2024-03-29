import 'package:expense_app/widgets/user_transactions.dart';
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
        title: Text("Expp"),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
                primary: Theme.of(context).colorScheme.onPrimary),
            child: const Text('Add'),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.addchart_sharp),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepOrange, width: 3),
            ),
            padding: EdgeInsets.all(30),
            child: Text("Chart"),
          ),
          UserTransactions(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.addchart_sharp),
      ),
    );
  }
}
