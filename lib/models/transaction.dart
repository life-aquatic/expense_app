import 'package:flutter/foundation.dart';

class Transaction {
  @required int id;
  @required String title;
  @required double amount;
  @required DateTime date;

  Transaction({this.id, this.title, this.amount, this.date});
}