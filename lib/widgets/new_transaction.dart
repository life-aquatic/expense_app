import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function _AddNewTransaction; // or maybe VoidCallback?
  NewTransaction(this._AddNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 40,
      child: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            FlatButton(
              child: Text('Add a record'),
              textColor: Colors.deepOrange,
              onPressed: () {
                _AddNewTransaction(
                titleController.text,
                double.parse(amountController.text));
              },
            ),
          ],
        ),
      ),
    );
  }
}
