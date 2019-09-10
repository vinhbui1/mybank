import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:async';
import './Chart.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class Trans {
  const Trans({this.title, this.price, this.details});
  final String title;
  final String price;
  final String details;
}

const List<Trans> choices = const <Trans>[
  const Trans(
      title: 'Account Information', price: "235", details: 'Information'),
  const Trans(title: 'Fund Transfer', price: "25", details: 'Information'),
  const Trans(title: 'Statment', price: "23", details: 'Information'),
  const Trans(title: 'Withdraw', price: "235", details: 'Information'),
  const Trans(title: 'Mobile Repaid', price: "235", details: 'Information'),
];

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 13;
    final double itemWidth = size.width / 2.3;

    final heightofTabar = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: heightofTabar + 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          Text(
            "Transactions",
            style: TextStyle(color: Colors.black, fontSize: 28),
          ),
          Chart(),
          Row(
            children: <Widget>[
            //  SizedBox(height: 45,),
              Expanded(
                child: Text(
                  'Recent Transactions',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Text("View All"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              // padding: const EdgeInsets.only(left: 20, right: 20),
              child: GridView.count(
                  childAspectRatio: (itemWidth / itemHeight),
                  crossAxisCount: 1,
                  children: List.generate(choices.length, (index) {
                    return GestureDetector(
                      child: ChoiceCard(tran: choices[index]),
                    );
                  })),
            ),
          ),
        ],
      ),
    );
  }
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.tran}) : super(key: key);
  final Trans tran;

  @override
  Widget build(BuildContext context) {
    //final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
        child: Row(
            //crossAxisAlignment: CrossAxisAlignment.,
            children: <Widget>[
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    tran.title,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Text(
                    tran.details,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                //  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '-\$' + tran.price,
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
