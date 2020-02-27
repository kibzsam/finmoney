import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: "t1",
      title: "Addidas Yeezy",
      amount: 109.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Nike Shoes",
      amount: 109.99,
      date: DateTime.now(),
    )
  ];
  //Method to create a new Transaction
  void _addNewTransaction(String txtTitle, double txtAmount) {
    final newTx = Transaction(
        title: txtTitle,
        amount: txtAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
