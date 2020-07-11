import 'package:ExpenseTracker/models/Transaction.dart';
import 'package:ExpenseTracker/widget/new_transaction.dart';
import 'package:ExpenseTracker/widget/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 100, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'Weekly Groceries', amount: 100, date: DateTime.now())
  ];

  void _addNewTransaction(String txtitle, double txamount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txtitle,
        amount: txamount,
        date: DateTime.now());

    setState(() {
      transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          NewTransaction(_addNewTransaction),
          TransactionList(transactions)
        ],
      ),
    );
  }
}
