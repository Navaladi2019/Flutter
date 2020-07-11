import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
//  String titleInput;
//  String amountInput;

  NewTransaction(this.addNewTransaction);
  final Function addNewTransaction;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                // onChanged: (value) {
                //   titleInput = value;
                // },
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                // onChanged: (value) {
                //   amountInput = value;
                // }
                controller: amountController,
              ),
              FlatButton(
                onPressed: () {
                  double val = double.tryParse(amountController.value.text);
                  addNewTransaction(titleController.value.text, val);
                },
                child: Text(
                  "Add Transaction",
                  style: TextStyle(color: Colors.purple),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
