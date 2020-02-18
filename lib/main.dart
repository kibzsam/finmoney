import 'package:flutter/material.dart';
import './transactions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personal Finance"),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  child: Text("Analytics"),
                ),
              ),
              Column(
                  children: transactions.map((tx) {
                return Card(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Icon(
                              Icons.account_balance_wallet,
                              color: Colors.pinkAccent,
                            ),
                          ),
                        ]),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tx.title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              tx.date.toString(),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(tx.amount.toString(),
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ]),
                );
              }).toList())
            ]),
      ),
    );
  }
}
