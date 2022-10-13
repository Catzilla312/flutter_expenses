import 'package:flutter/cupertino.dart';
import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
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
  void _addNewTransaction() {}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(
          userTransactions: _userTransactions,
        ),
      ],
    );
  }
}
