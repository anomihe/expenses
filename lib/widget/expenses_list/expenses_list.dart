import 'package:expensetracker/models/expense.dart';
import 'package:expensetracker/widget/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expense;
  final void Function(Expense expense) onRemoveExpense;
  const ExpensesList({
    super.key,
    required this.expense,
    required this.onRemoveExpense,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expense.length,
      itemBuilder: (context, index) {
        return Dismissible(
            key: ValueKey(expense[index]),
            background: Container(
              color: Theme.of(context).colorScheme.error,
              margin: EdgeInsets.symmetric(
                  horizontal: Theme.of(context).cardTheme.margin!.horizontal),
            ),
            onDismissed: (direction) {
              onRemoveExpense(expense[index]);
            },
            child: ExpenseItem(expense: expense[index]));
      },
    );
  }
}
