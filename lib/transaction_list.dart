import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: transactions.isEmpty
            ? Column(
                children: [
                  // Text('No transactions yet!'),
                  // SizedBox(height: 40),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 40),
                    child: Text('No transactions yet!'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 200,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.blue[100],
                    child: Row(children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        padding: EdgeInsets.all(10),
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 2)),
                        child: Text(
                          '\$${transactions[index].amount.toStringAsFixed(2)}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple[400]),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transactions[index].title,
                            style: Theme.of(context).textTheme.titleLarge,
                            //TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                              DateFormat.yMMMd()
                                  .format(transactions[index].date),
                              style: TextStyle(color: Colors.grey[700])),
                        ],
                      )
                    ]),
                  );
                },
                itemCount: transactions.length,
              ));
  }
}
