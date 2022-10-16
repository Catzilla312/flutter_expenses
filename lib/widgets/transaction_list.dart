import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;

  const TransactionList({super.key, required this.userTransactions});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: userTransactions.isEmpty
          ? Column(
              children: [
                Text("Empty", style: Theme.of(context).textTheme.titleMedium),
                SizedBox(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                          width: 2,
                        ),
                      ),
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Text(
                        "\$${userTransactions[index].amount.toStringAsFixed(1)}",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(userTransactions[index].title),
                        Text(
                          DateFormat.MMMMEEEEd()
                              .format(userTransactions[index].date),
                        ),
                      ],
                    ),
                  ]),
                );
              },
              itemCount: userTransactions.length,
            ),
    );
  }
}
