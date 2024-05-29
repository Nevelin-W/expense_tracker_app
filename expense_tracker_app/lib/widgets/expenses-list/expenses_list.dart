import 'package:flutter/material.dart';
import 'package:expense_tracker_app/model/expense.dart';
import 'package:expense_tracker_app/widgets/expenses-list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (data, index) => ExpenseItem(expenses[index]),
    );
  }
}
