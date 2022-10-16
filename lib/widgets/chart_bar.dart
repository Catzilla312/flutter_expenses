import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChartBar extends StatelessWidget {
  String label;
  double spentAmount;
  double spentPerc;

  ChartBar({
    super.key,
    required this.label,
    required this.spentAmount,
    required this.spentPerc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          child: FittedBox(
            child: Text(
              '\$${spentAmount.toStringAsFixed(0)}',
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: const Color.fromARGB(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spentPerc,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(label),
      ],
    );
  }
}
