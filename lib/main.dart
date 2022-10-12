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
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Card(
              color: Colors.amber,
              child: Container(
                child: Text("Chart"),
                width: double.infinity,
              ),
            ),
            Card(
              color: Colors.blue,
              child: Text("List of"),
            ),
          ],
        ));
  }
}
