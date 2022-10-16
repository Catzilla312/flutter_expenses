import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // NewTransaction(
        //   addtx: _addNewTransaction,
        // ),
        // TextButton(
        //   style: TextButton.styleFrom(
        //     primary: Colors.purple,
        //   ),
        //   onPressed: submitData,
        //   child: const Text("Add"),
        // )
      ],
    );
  }
}
