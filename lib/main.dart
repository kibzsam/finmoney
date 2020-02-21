import 'package:flutter/material.dart';
import './transactions.dart';
import 'package:intl/intl.dart';

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
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  child: Text("Analytics"),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('Add Transaction'),
                      textColor: Colors.purple,
                    )
                  ]),
                ),
              ),
              Column(
                  children: transactions.map((tx) {
                return Card(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          Container(
                            padding: EdgeInsets.all(5),
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
                            Container(
                              width: 100,
                              child: Text(
                                tx.title,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: 100,
                              child: Text(
                                DateFormat.yMMMd().format(tx.date),
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$${tx.amount}',
                              style: TextStyle(
                                  color: Colors.pinkAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
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
