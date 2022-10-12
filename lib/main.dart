import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 'as',
      amount: 22,
      date: DateTime.now(),
      title: "new shit",
    ),
    Transaction(
      id: 'aws',
      amount: 26.8,
      date: DateTime.now(),
      title: "old shit",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Card(
              color: Colors.amber,
              child: Container(
                child: Text("Chart"),
                width: double.infinity,
              ),
            ),
            Column(
              children: transactions.map((trs) {
                return Card(
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Text(
                        "\$${trs.amount}",
                        style: const TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(trs.title),
                        Text(trs.date.toString()),
                      ],
                    ),
                  ]),
                );
              }).toList(),
            ),
          ],
        ));
  }
}
