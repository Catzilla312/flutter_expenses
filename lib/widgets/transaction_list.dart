import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;

  const TransactionList({required this.userTransactions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: userTransactions.map((trs) {
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
                Text(
                  DateFormat.MMMMEEEEd().format(trs.date),
                ),
              ],
            ),
          ]),
        );
      }).toList(),
    );
  }
}
