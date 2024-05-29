import 'package:flutter/material.dart';
import 'package:expense_tracker_app/model/expense.dart';
import 'package:expense_tracker_app/widgets/expenses-list/expenses_list.dart';
import 'package:expense_tracker_app/widgets/new_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'cola',
      amount: 2,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Steak',
      amount: 15,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Gasoline',
      amount: 50.50,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Plane ticket',
      amount: 234.11,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];

  _openAddOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(),
    );
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your expense tracker'),
        actions: [
          IconButton(
            onPressed: _openAddOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          Text('hello'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
