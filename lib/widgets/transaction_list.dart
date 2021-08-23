import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {

  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map((tx) {
      return Card(
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2),
              ),
              child: Text(
                '${'\$' + tx.amount.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.purple,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  tx.title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  DateFormat.yMMMd().format(tx.date),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }).toList());
  }
}