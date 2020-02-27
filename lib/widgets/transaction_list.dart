import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map((tx) {
      return Card(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Icon(
                Icons.account_balance_wallet,
                color: Colors.pinkAccent,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Text(
                tx.title,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Text(
                DateFormat.yMMMd().format(tx.date),
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              '\$${tx.amount}',
              style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          )
        ]),
      );
    }).toList());
  }
}
