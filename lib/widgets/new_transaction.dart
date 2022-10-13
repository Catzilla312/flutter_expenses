import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: "Title",
              ),
              onChanged: (value) {
                // titleInput = value;
              },
            ),
            TextField(
                controller: amountController,
                decoration: const InputDecoration(
                  labelText: "Amount",
                ),
                onChanged: (value) {
                  // amountInput = value;
                }),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
              onPressed: () {
                print(titleController.text);
              },
              child: const Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}
