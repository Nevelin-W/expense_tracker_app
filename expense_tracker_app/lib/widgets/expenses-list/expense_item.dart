import 'package:flutter/material.dart';
import 'package:expense_tracker_app/model/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0, vertical: 16.0), // (8.0),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(children: [
              Text('\$${expense.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(children: [
                Icon(categoryIcons[expense.category]),
                const SizedBox(width: 5),
                Text(expense.formattedDate)
              ])
            ])
          ],
        ),
      ),
    );
  }
}
