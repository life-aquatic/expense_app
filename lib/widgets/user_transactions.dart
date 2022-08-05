import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'new_transaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _user_transactions = [
    Transaction(
      id: 1,
      title: 'New Shoes',
      amount: 43.33,
      date: DateTime.now(),
    ),
    Transaction(
      id: 2,
      title: 'Food',
      amount: 12.33,
      date: DateTime.now(),
    ),
    Transaction(
      id: 3,
      title: 'mood88',
      amount: 12.33,
      date: DateTime.now(),
    ),
    Transaction(
      id: 4,
      title: 'ood',
      amount: 33,
      date: DateTime.now(),
    ),
    Transaction(
      id: 5,
      title: 'kijk',
      amount: 14.4,
      date: DateTime.now(),
    ),
    Transaction(
      id: 6,
      title: 'baka',
      amount: 1134,
      date: DateTime.now(),
    ),
  ];

  void _AddNewTransaction(String title, double amount) {
    final newTx = Transaction(
      id: _user_transactions.length + 1,
      title: title,
      amount: amount,
      date: DateTime.now(),
    );
    setState(() {
      _user_transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_AddNewTransaction),
        TransactionList(_user_transactions),
      ],
    );
  }
}
