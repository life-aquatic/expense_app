import 'package:intl/intl.dart';

import '../models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _user_transactions;

  TransactionList(this._user_transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, ind) {
          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$ ${_user_transactions[ind].amount.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        _user_transactions[ind].title,
                        style: const TextStyle(
                          fontSize: 18.3,
                        ),
                      ),
                    ),
                    Text(
                      DateFormat.yMMMd().format(_user_transactions[ind].date),
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: _user_transactions.length,
      ),
    );
  }
}
